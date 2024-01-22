resource "aws_subnet" "public_subnets" {
  count = length(var.public_subnet_cidrs)

  vpc_id = var.vpc_id
  cidr_block = element(var.public_subnet_cidrs, count.index)
  availability_zone = element(var.availability-zones, count.index)

  tags = {
    Name = "Public-Subnet-${count.index + 1}"
  }
}

resource "aws_subnet" "private_subnets" {
  count = length(var.private_subnet_cidrs)

  vpc_id = var.vpc_id
  cidr_block = element(var.private_subnet_cidrs, count.index)
  availability_zone = element(var.availability-zones, count.index)

  tags = {
    Name = "Private-Subnet-${count.index + 1}"
  }
}

resource "aws_route_table" "this" {
  vpc_id = var.vpc_id
  
  route {
    cidr_block = var.internet_gateway_cidr_block
    gateway_id = var.internet_gateway_id
  }

  tags = var.route_table_tags
}

resource "aws_route_table_association" "public_subnet_association" {
 count = length(var.public_subnet_cidrs)
 subnet_id      = element(aws_subnet.public_subnets[*].id, count.index)
 route_table_id = aws_route_table.this.id
}