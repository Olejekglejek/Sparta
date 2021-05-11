# Creating variables to apply DRY using Terraform variable.tf
# These variables can be called in our main.tf

variable "vpc_id" {

  default = "vpc-07e47e9d90d2076da"
}

variable "tag_name" {

  default = "Oleg_terraform_variable_code_testing"
}

variable "webapp_ami_id" {

  default = "ami-08aaa3dea77ad1b51"
}

variable "aws_subnet" {

  default = "terraform_code_testing_with_subnet_var"
}

variable "aws_key_name" {

  default = "name of your file"
}

variable "aws_key_path" {

  default = "~/.ssh/DevOpsStudent.pem"
}

variable "aws_region" {
  default = "eu-west-1"
}
