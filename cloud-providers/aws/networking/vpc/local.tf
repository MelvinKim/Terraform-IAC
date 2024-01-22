locals {
  vpc_tags = {
    Name = "Prod-VPC"
  }

  internet_gateway_tags = {
    Name = "Prod VPC Internet Gateway"
  }

  route_table_tags = {
   Name = "Custom VPC Route Table"
 }
}