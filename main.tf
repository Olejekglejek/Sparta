# Lets initialise terraform
# Providers : AWS

# This code will eventually launch and EC2 instance for us
# Provider is a ketword in Terraform to define the name of cloud provider

# Syntax:

provider "aws" {
  #define the region to launch the ec2 instance in Ireland
  region = "eu-west-1"

}
# Launching an EC2 instance from our webapp AMI
# resource is the keyword that allows us to add aws resource as task in Ansible

#Resource block of code
resource "aws_instance" "app_instance" {
  # add the AMI id between "" as below
  ami = "ami-08aaa3dea77ad1b51"

  #Lets add the type of instance we would like to launch
  instance_type = "t2.micro"
  key_name      = "DevOpsStudent.pem"
  #On some old systems
  #AWS_ACCESS_KEY = "AWS_ACCESS_KEY"

  # Do we need to enable public IP for our APP
  associate_public_ip_address = true
  # Tags is to give name to our instance
  tags = {
    "Name" = "Eng84_oleg_app_4_terraform"

  }

}
#Resource block of code ends here

# block of code to create a default VPC
# resource "aws_default_vpc" "default" {
#   cidr_block       = "10.0.0.0/16"
#   instance_tenancy = "default"

#   tags = {
#     "Name" = "Eng84_oleg_terraform_vpc"
#   }
# }

resource "aws_vpc" "Terraform_vpc_code_test" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "Eng84_oleg_terraform_vpc"
  }
}

