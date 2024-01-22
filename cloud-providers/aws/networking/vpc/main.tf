module "prod_vpc" {
  source = "../../../../modules/vpc"

  vpc_cidr_block = var.vpc_cidr_block
  vpc_tags = local.vpc_tags
}

module "prod_vpc_subnets" {
  source = "../../../../modules/subnet"

  vpc_id = module.prod_vpc.vpc_id
  public_subnet_cidrs = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
  availability-zones = var.availabilty_zones
  route_table_tags = local.route_table_tags
  internet_gateway_id = module.prod_vpc_internet_gateway.internet_gateway_id
  internet_gateway_cidr_block = var.internet_gateway_cidr_block
}

module "prod_vpc_internet_gateway" {
  source = "../../../../modules/internet-gateway"

  vpc_id = module.prod_vpc.vpc_id
  internet_gateway_tags = local.internet_gateway_tags
}