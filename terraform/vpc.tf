
# VPC

resource "aws_vpc" "alexis_vpc" {
  cidr_block = "12.1.0.0/16"
  instance_tenancy = "default"
  tags = {
    Name = var.vpc_name
  }
}


# Internet Gateway

 resource "aws_internet_gateway" "alexis_igw" {
  vpc_id = aws_vpc.alexis_vpc.id
  tags = {
    Name = var.igw_name
  }
}


# Default routing for all subnets

resource "aws_default_route_table" "alexis_rt_default" {
  default_route_table_id = aws_vpc.alexis_vpc.default_route_table_id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.alexis_igw.id
  }
  tags = {
    Name = var.default_rt_name
  }
}


# Subnets

resource "aws_subnet" "alexis_subnetA" {
  vpc_id = aws_vpc.alexis_vpc.id
  cidr_block = "12.1.1.0/24"
  availability_zone_id = "euw1-az1"
tags = {
  Name = var.subnetA_name
  }
}
resource "aws_subnet" "alexis_subnetB" {
  vpc_id = aws_vpc.alexis_vpc.id
  cidr_block = "12.1.2.0/24"
  availability_zone_id = "euw1-az2"
tags = {
  Name = var.subnetB_name
  }
}
resource "aws_subnet" "alexis_subnetC" {
  vpc_id = aws_vpc.alexis_vpc.id
  cidr_block = "12.1.3.0/24"
  availability_zone_id = "euw1-az3"
tags = {
  Name = var.subnetC_name
  }
}

