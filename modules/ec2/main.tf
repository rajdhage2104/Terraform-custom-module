resource "aws_instance" "my-instance" {
  ami = var.ami
  instance_type = var.instance_type
  key_name = var.key_name
  vpc_security_group_ids = [var.vpc_my-vpc_security_group_ids]
  subnet_id = var.vpc_subnet_id
}