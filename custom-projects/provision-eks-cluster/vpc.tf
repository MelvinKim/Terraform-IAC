module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.5.1"

  name = local.vpc_name

  cidr = var.vpc_cidr
  azs = slice(data.aws_availability_zones.available.names, 0, 3)
  private_subnets = var.private_subnets_cidr
  public_subnets = var.public_subnets_cidr

  enable_nat_gateway = var.enable_nat_gateway
  single_nat_gateway = var.single_nat_gateway
  enable_dns_hostnames = var.enable_dns_hostnames

  public_subnet_tags = local.public_subnet_tags
  private_subnet_tags = local.private_subnet_tags
}