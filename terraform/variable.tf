
variable "ami_ubuntu_1804" {
  default = "ami-09a56048b08f94cdf"
}

# VPC Vars
variable "vpc_name" {
    default = "eng84_final_project_vpc"
}

# Subnet Vars
variable "subnetA_name" {
    default = "eng84_final_project_subnetA"
}
variable "subnetB_name" {
    default = "eng84_final_project_subnetB"
}
variable "subnetC_name" {
    default = "eng84_final_project_subnetC"
}

# IGW Vars
variable "igw_name" {
    default = "eng84_final_project_igw"
}

# Route Table Vars
variable "default_rt_name" {
    default = "eng84_final_project_default_rt"
}



