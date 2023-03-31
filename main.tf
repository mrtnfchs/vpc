resource "aws_vpc" "this" {
  cidr_block = "10.0.0.0/16"
  enable_dns_hostnames = var.enable_dns_hostnames
  enable_dns_support   = var.enable_dns_support

  tags = {
    "Name" = format("%s-vpc", terraform.workspace)
  }
}

resource "aws_default_security_group" "this" {
  vpc_id   = aws_vpc.this.id
  tags = {
    Name = format("%s-default", terraform.workspace)
  }
}

resource "aws_subnet" "private" {
  count = var.private_subnet ? 1 : 0

  vpc_id            = aws_vpc.this.id
  cidr_block        = cidrsubnet(aws_vpc.this.cidr_block, 1, 0)
  tags = {
    Name = format("%s-private", terraform.workspace)
  }
}

resource "aws_subnet" "public" {
  count = var.public_subnet ? 1 : 0

  vpc_id            = aws_vpc.this.id
  cidr_block        = cidrsubnet(aws_vpc.this.cidr_block, 1, 1)
  tags = {
    Name = format("%s-public", terraform.workspace)
  }
}
