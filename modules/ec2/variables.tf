variable "ami" {
  type = string
  description = "Instance AMI"
}

variable "instance_type" {
  type = string
  description = "Instance type"
}

variable "key_name" {
  type = string
  description = "Key Name"
}

variable "vpc_my-vpc_security_group_ids" {
  type = string
  description = "Security group id"
}

variable "vpc_subnet_id" {
  type = string
  description = "Subnet id"
}




