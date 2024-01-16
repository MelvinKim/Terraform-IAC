resource "aws_security_group_rule" "allow-egress" {
  count = length(var.sg_egress_rules)

  type = "egress"
  from_port = var.sg_egress_rules[count.index].from_port
  to_port = var.sg_egress_rules[count.index].to_port
  protocol = var.sg_egress_rules[count.index].protocol
  description = var.sg_egress_rules[count.index].description
  cidr_blocks = var.sg_egress_rules[count.index].cidr_block
  security_group_id = aws_security_group.prod-prometheus.id
}

resource "aws_security_group_rule" "allow-ingress" {
  count = length(var.sg_ingress_rules)
  
  type = "ingress"
  from_port = var.sg_ingress_rules[count.index].from_port
  to_port = var.sg_ingress_rules[count.index].to_port
  protocol = var.sg_ingress_rules[count.index].protocol
  description = var.sg_ingress_rules[count.index].description
  cidr_blocks = var.sg_ingress_rules[count.index].cidr_block
  security_group_id = aws_security_group.prod-prometheus.id
}

resource "aws_security_group" "prod-prometheus" {
  name = var.security_group_name
}

resource "aws_instance" "prod-prometheus" {
  ami = var.ami_id
  instance_type = var.instance_type
  subnet_id = var.subnet_id
  vpc_security_group_ids = [aws_security_group.prod-prometheus.id]
  key_name = "prod-prometheus"

  tags = {
    Name = var.instance_name_tag # Assign a name to the EC2 instance
  }
}