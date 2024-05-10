resource "aws_vpc" "my-vpc" {
  cidr_block = var.vpc_cidr
}

resource "aws_internet_gateway" "my-igw" {
  vpc_id = aws_vpc.my-vpc.id
}

resource "aws_route" "my-route" {
  route_table_id = aws_vpc.my-vpc.main_route_table_id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id = aws_internet_gateway.my-igw.id
}

resource "aws_subnet" "my-sub-1" {
  vpc_id = aws_vpc.my-vpc.id
  cidr_block = var.subnet_1_cidr
  map_public_ip_on_launch = true
}

resource "aws_security_group" "my-sg1" {
  name = "terraform_example"
  description = "Security group in terraform"
  vpc_id = aws_vpc.my-vpc.id
  
  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  
  ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}