variable "cidr_block" {
  description = "CIDR block for VPC"
  type        = string
}

variable "project" {
  description = "Project name for resource tagging"
  type        = string
}

variable "aws_region" {
  description = "AWS region"
  type        = string
}