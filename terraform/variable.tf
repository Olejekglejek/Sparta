
variable "ami_ubuntu_1804" {
  default = "ami-09a56048b08f94cdf"
}

# VPC Vars
variable "vpc_name" {
    default = "eng84_terraform_k8s_vpc"
}

# Subnet Vars
variable "subnetA_name" {
    default = "eng84_terraform_k8s_subnetA"
}
variable "subnetB_name" {
    default = "eng84_terraform_k8s_subnetB"
}
variable "subnetC_name" {
    default = "eng84_terraform_k8s_subnetC"
}

# IGW Vars
variable "igw_name" {
    default = "eng84_terraform_k8s_igw"
}

# Route Table Vars
variable "default_rt_name" {
    default = "eng84_terraform_default_rt"
}

# Security Groups
variable "security_group_name_public" {
    default = "eng84_terraform_k8s_sg_public"
}

# EC2 Vars
variable "aws_instance_master" {
    default = "eng84_k8s_master"
}

variable "aws_instance_workerA" {
    default = "eng84_k8s_workerA"
}

variable "aws_instance_workerB" {
    default = "eng84_k8s_workerB"
}

variable "aws_instance_workerC" {
    default = "eng84_k8s_workerC"
}
