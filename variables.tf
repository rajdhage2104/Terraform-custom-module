variable "vpc_cidr" {
  type = string
  default = "10.0.0.0/16"
  description = "VPC CIDR block"
}

variable "subnet_1_cidr" {
  type = string
  default = "10.0.1.0/24"
  description = "Subnet CIDR block"
}

variable "aws_region" {
  type = string
  default = "us-east-1"
  description = "aws region"
}

variable "ami" {
  type = string
  default = "ami-0e001c9271cf7f3b9"
  description = "Instance AMI"
}

variable "instance_type" {
  type = string
  default = "t2.micro"
  description = "Instance type"
}

variable "key_name" {
  type = string
  default = "id_rsa"
  description = "Key Name"
}