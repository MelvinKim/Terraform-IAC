module "ingress_security_group_rules" {
  source = "../../../modules/security-group-rule"

  sg_rules = local.ingress_security_group_rules
  security_group_id = module.security_group.security_group_id
  security_group_rules_type = var.ingress_security_group_rules_type
}

module "egress_security_group_rules" {
  source = "../../../modules/security-group-rule"

  sg_rules = local.egress_security_group_rules
  security_group_id = module.security_group.security_group_id
  security_group_rules_type = var.egress_security_group_rules_type
}

module "security_group" {
  source = "../../../modules/security-group"

  security_group_name = var.security_group_name
}

module "ec2_instance" {
  source = "../../../modules/ec2"

  ami = var.ami_id
  instance_type = var.instance_type
  subnet_id = var.subnet_id
  vpc_security_group_ids = [module.security_group.security_group_id]
  key_pair_name = var.key_pair_name
  tags = local.tags
}