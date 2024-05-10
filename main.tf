terraform {
  required_version = ">=0.12"
}

provider "aws" {
  region = var.aws_region
}

module "vpc" {
  source = "./modules/vpc"

  vpc_cidr = var.vpc_cidr
  subnet_1_cidr = var.subnet_1_cidr

}

module "ec2" {
  source = "./modules/ec2"

  ami = var.ami
  instance_type = var.instance_type
  key_name = var.key_name
  vpc_my-vpc_security_group_ids = module.vpc.vpc_security_group_id
  vpc_subnet_id = module.vpc.vpc_subnet_id
  depends_on = [ module.vpc ]
}











