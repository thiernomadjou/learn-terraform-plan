# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0
variable "secret_key" {
  type        = string
  sensitive   = true
  description = "Secret key for hello module"
}

variable "region" {
  type        = string
  description = "AWS region for all resources."
  default = "us-east-1"
}

variable "project_name" {
  type        = string
  description = "Name of the example project."

  default = "terraform-plan"
}
