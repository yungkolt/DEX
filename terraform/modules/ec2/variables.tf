variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "key_name" {
  description = "SSH key pair name"
  type        = string
}

variable "sg_id" {
  description = "Security group ID"
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
