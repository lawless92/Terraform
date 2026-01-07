resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    Name = "main-internet-gateway"
  }
}


resource "aws_subnet" "subnet01" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.subnet1_cidr
  
  tags = {
    Name = "subnet01"
  }
}

resource "aws_subnet" "subnet02" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.subnet2_cidr
  
  tags = {
    Name = "subnet02"
  }
}
