# Names
variable "vpc_name" {
  default = "Eng_84_oleg_terraform_vpc"
}

variable "pub_subnet_name" {
  default = "Eng84_oleg_terraform_public_subnet"
}

variable "priv_subnet_name" {
  default = "Eng84_oleg_terraform_private_subnet"
}

variable "igw_name" {
  default = "Eng84_oleg_terraform_igw"
}

variable "pub_rt_name" {
  default = "Eng84_oleg_terraform_rt_pub"
}

variable "priv_rt_name" {
  default = "Eng84_oleg_terraform_rt_priv"
}

variable "pub_sec_name" {
  default = "Eng84_oleg_terraform_pub_sec"
}

variable "priv_sec_name" {
  default = "Eng84_oleg_terraform_priv_sec"
}

variable "webapp_name" {
  default = "Eng84_oleg_terraform_app"
}

variable "db_name" {
  default = "Eng84_oleg_terraform_db"
}




# CIDR Blocks
variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "pub1_cidr" {
  default = "10.0.1.0/24"
}

variable "pub2_cidr" {
  default = "10.0.3.0/24"
}

variable "priv_cidr" {
  default = "10.0.2.0/24"
}



# Specific ips
variable "my_ip" {
  default = "81.107.194.131/32"
}

variable "webapp_ip" {
  default = "10.0.1.134"
}

variable "db_ip" {
  default = "10.0.2.36"
}



# AMI's
variable "app_ami" {
  default = "ami-0f79ddc3f7a4cee74"
}

variable "db_ami" {
  default = "ami-0824ad0deafb692a5"
}

variable "launch_template_id" {
  default = "lt-06914f67db6d7167d"
}



# Key pair
variable "key" {
  default = "eng84devops"
}

variable "key_path" {
  default = "/home/oleg/.ssh/eng84devops.pem"
}
