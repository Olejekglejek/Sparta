provider "aws" {
  region = "eu-west-1"
}

# Create a VPC
resource "aws_vpc" "terraform_vpc" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = "default"

  enable_dns_support   = true #gives you an internal domain name
  enable_dns_hostnames = true #gives you an internal host name
  tags = {
    Name = var.vpc_name
  }
}

# Create Internet Gateway
resource "aws_internet_gateway" "terraform_igw" {
  vpc_id = aws_vpc.terraform_vpc.id
  tags = {
    Name = var.igw_name
  }
}

#Create Custom Route Table
resource "aws_default_route_table" "terraform_app_rt" {

  default_route_table_id = aws_vpc.terraform_vpc.default_route_table_id


  route {
    //associated subnet can reach everywhere
    cidr_block = "0.0.0.0/0"
    //CRT uses this IGW to reach internet
    gateway_id = aws_internet_gateway.terraform_igw.id
  }

  tags = {
    Name = "Oleg_terraform_public_rt"
  }
}

# Create the Subnet
resource "aws_subnet" "terraform_public_subnet" {
  vpc_id     = aws_vpc.terraform_vpc.id
  cidr_block = "10.0.1.0/24"
  #availability_zone = "eu-west-1c"

  tags = {
    Name = var.aws_subnet
  }
}

# Associate route tables with subnets
resource "aws_route_table_association" "a1" {
  subnet_id      = aws_subnet.terraform_public_subnet.id
  route_table_id = aws_vpc.terraform_vpc.default_route_table_id
}


# Create security group Assign the subnet to the VPC
resource "aws_security_group" "pub_sec_group" {
  name        = "Oleg_terraform_sg_app"
  description = "app security group"
  vpc_id      = aws_vpc.terraform_vpc.id

  # Inbound rules for webapp
  # Inbound rules code block:
  ingress {
    from_port   = "80" # for our to launch in the browser
    to_port     = "80" # for our to launch in the browser
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # allow all
  }
  # Inbound rules code block ends

  # Outbound rules code block
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1" # allow all
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = var.aws_sg_name
  }
  # Outbound rules code block ends
}

resource "aws_security_group_rule" "my_ssh" {
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks       = [var.my_ip]
  security_group_id = aws_security_group.pub_sec_group.id
}
resource "aws_security_group_rule" "vpc_access" {
  type              = "ingress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = [var.vpc_cidr]
  security_group_id = aws_security_group.pub_sec_group.id
}




# Create and assign an instance to the subnet
resource "aws_instance" "app_instance" {
  # add the AMI id between "" as below
  ami = var.webapp_ami_id

  # Let's add the type of instance we would like launch
  instance_type = "t2.micro"
  #The key_name to ssh into instance
  key_name = var.aws_key_name
  #aws_key_path = var.aws_key_path

  # Subnet
  subnet_id = aws_subnet.terraform_public_subnet.id

  # Security group
  vpc_security_group_ids = [aws_security_group.pub_sec_group.id]

  # Do we need to enable public IP for our app
  associate_public_ip_address = true

  # Tags is to give name to our instance
  tags = {
    Name = "${var.webapp_name}"
  }

  connection {
    type        = "ssh"
    user        = "ubuntu"
    private_key = file("${var.aws_key_path}") #var.aws_key_path "${file("${var.PRIVATE_KEY_PATH}")}"
    host        = self.public_ip
  }

  provisioner "file" {
    source      = "./scripts/app/init.sh"
    destination = "/tmp/init.sh"
  }

  # Change permissions on bash script and execute.
  provisioner "remote-exec" {
    inline = [
      "chmod +x /tmp/init.sh",
      "bash /tmp/init.sh",
    ]
  }


}

# data "template_file" "app_init" {
#   template = file("./scripts/app/init.sh")
# }



