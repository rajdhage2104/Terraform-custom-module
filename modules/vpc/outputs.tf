output "vpc_id" {
  value = aws_vpc.my-vpc.id
}

output "vpc_subnet_id" {
  value = aws_subnet.my-sub-1.id
}

output "vpc_security_group_id" {
  value = aws_security_group.my-sg1.id
}