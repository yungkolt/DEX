provider "aws" {
  region = var.aws_region
}

module "vpc" {
  source     = "./modules/vpc"
  cidr_block = var.vpc_cidr
  project    = var.project_name
  aws_region = var.aws_region
}

module "security" {
  source  = "./modules/security"
  vpc_id  = module.vpc.vpc_id
  project = var.project_name
}

module "ec2" {
  source        = "./modules/ec2"
  vpc_id        = module.vpc.vpc_id
  subnet_id     = module.vpc.public_subnet_id
  instance_type = var.instance_type
  key_name      = var.key_name
  sg_id         = module.security.security_group_id
  project       = var.project_name
  aws_region    = var.aws_region
}