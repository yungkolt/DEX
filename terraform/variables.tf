variable "aws_region" {
  description = "AWS region"
  default     = "us-west-1"
}

variable "vpc_cidr" {
  description = "CIDR block for VPC"
  default     = "10.0.0.0/16"
}

variable "project_name" {
  description = "Project name for resource tagging"
  default     = "dex-project"
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t3.medium"
}

variable "key_name" {
  description = "Name of the SSH key pair"
  type        = string
}