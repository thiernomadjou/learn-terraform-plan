# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

variable "ami_id" {
  type        = string
  description = "AMI id for instance."
}

variable "instance_name" {
  type        = string
  description = "Name of the EC2 instance."
}

variable "project_name" {
  type        = string
  description = "Name of the example project."

  default = "terraform-init"
}

variable "instance_type" {
  type        = string
  description = "Instance type for the EC2 instance."

  default = "t2.micro"
}

variable "vpc_name" {
  type    = string
  default = "demo_vpc"
}

variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}