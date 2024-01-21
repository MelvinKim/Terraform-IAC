resource "aws_security_group_rule" "this" {
  count = length(var.sg_rules)

  type = var.security_group_rules_type
  from_port = var.sg_rules[count.index].from_port
  to_port = var.sg_rules[count.index].to_port
  protocol = var.sg_rules[count.index].protocol
  description = var.sg_rules[count.index].description
  cidr_blocks = var.sg_rules[count.index].cidr_block
  security_group_id = var.security_group_id
}