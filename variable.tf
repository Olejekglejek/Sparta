# Creating variables to apply DRY using Terraform variable.tf
# These variables can be called in our main.tf

variable "vpc_id" {

  default = "vpc-07e47e9d90d2076da"
}

variable "tag_name" {

  default = "Oleg_terraform_variable_code_testing"
}

variable "webapp_ami_id" {

  default = "ami-0f79ddc3f7a4cee74"
}

variable "aws_subnet" {

  default = "terraform_code_testing_with_subnet_var"
}

variable "aws_key_name" {

  default = "eng84devops"
}

variable "aws_key_path" {

  default = "/home/oleg/.ssh/eng84devops.pem"
}

variable "aws_region" {
  default = "eu-west-1"
}

variable "vpc_name" {
  default = "Eng84_Oleg_terraform_vpc"
}

variable "aws_sg_name" {
  default = "Eng84_Oleg_terraform_sg"
}

variable "webapp_name" {
  default = "Eng84_oleg_terraform_webapp_auto"
}

variable "my_ip" {
  default = "81.107.194.131/32"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}
variable "igw_name" {
  default = "Eng84_oleg_terraform_igw"
}
