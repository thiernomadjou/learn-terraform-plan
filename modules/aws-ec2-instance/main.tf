# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0
#Define the VPC 
resource "aws_vpc" "vpc" {
  cidr_block = var.vpc_cidr

  tags = {
    Name        = var.vpc_name
    Environment = "demo_environment"
    Terraform   = "true"
  }
}

resource "aws_subnet" "private_subnets" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = cidrsubnet(var.vpc_cidr, 8, 1)
  availability_zone = tolist(data.aws_availability_zones.available.names)[0]

  tags = {
    Name      = "private_subnet_1"
    Terraform = "true"
  }
}

# Data listing availability zones
data "aws_availability_zones" "available" {}

# resource of aws instance
resource "aws_instance" "main" {
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id = aws_subnet.private_subnets.id
  tags = {
    Name  = var.instance_name
    Owner = "${var.project_name}-tutorial"
  }
}
