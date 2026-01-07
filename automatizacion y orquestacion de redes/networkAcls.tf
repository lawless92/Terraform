resource "aws_network_acl" "public_acl" {
  vpc_id = aws_vpc.main_vpc.id

  ingress {
    rule_no    = 100
    protocol   = "-1"
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    to_port    = 0
  }

  egress {
    rule_no    = 100
    protocol   = "-1"
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    to_port    = 0
  }

  tags = {
    Name = "public-acl"
  }
}

resource "aws_network_acl_association" "public_acl_assoc" {
  subnet_id      = aws_subnet.public_subnet.id
  network_acl_id = aws_network_acl.public_acl.id
}