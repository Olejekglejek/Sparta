provider "aws"{
  # Define region
  region = "eu-west-1"
}


# EC2 Instances

resource "aws_instance" "master_node" {
  ami = "ami-0943382e114f188e8"
  instance_type = "t3.small"
  subnet_id = "subnet-03ae704f56ee877c2"

  key_name = "eng84devops"
  associate_public_ip_address = true
  vpc_security_group_ids = [
    "sg-0481a3f9b8c983591"
  ]
  tags = {
    Name = "eng84_alexis_flask_app"
  }

  provisioner "file" {
    source = "../kubernetes"
    destination = "/home/ubuntu/"
    connection {
      type = "ssh"
      user = "ubuntu"
      agent = true
      host = self.public_ip
      private_key = file(pathexpand("~/docs/imp/wrk/sparta_global/aws/eng84devops.pem"))
    }
  }
  provisioner "remote-exec" {
    script = "../provision.sh"
    connection {
      type = "ssh"
      user = "ubuntu"
      agent = true
      host = self.public_ip
      private_key = file(pathexpand("~/docs/imp/wrk/sparta_global/aws/eng84devops.pem"))
    }
  }
}


