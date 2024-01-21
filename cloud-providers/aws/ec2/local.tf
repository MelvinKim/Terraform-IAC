locals {
  egress_security_group_rules = [
    {
      from_port = 0
      to_port = 0
      protocol = "-1"
      cidr_block = ["0.0.0.0/0"]
      description = "egress ingress rule"
      ipv6_cidr_blocks = "::/0"
    },
  ]
  
  ingress_security_group_rules = [
    {
      from_port = 22
      to_port = 22
      protocol = "tcp"
      cidr_block = ["197.248.248.79/32"]
      ipv6_cidr_blocks = "::/0"
      description = "SSH port"
    },
    {
      from_port = 9090
      to_port = 9090
      protocol = "tcp"
      cidr_block = ["0.0.0.0/0"]
      ipv6_cidr_blocks = "::/0"
      description = "Prometheus port"
    },
    {
      from_port = 9100
      to_port = 9100
      protocol = "tcp"
      cidr_block = ["0.0.0.0/0"]
      ipv6_cidr_blocks = "::/0"
      description = "Node Exporter port"
    },
    {
      from_port = 3000
      to_port = 3000
      protocol = "tcp"
      cidr_block = ["0.0.0.0/0"]
      ipv6_cidr_blocks = "::/0"
      description = "Grafana port"
    },
    {
      from_port = 9200
      to_port = 9200
      protocol = "tcp"
      cidr_block = ["0.0.0.0/0"]
      ipv6_cidr_blocks = "::/0"
      description = "ELK Stack"
    },
    {
      from_port = 5601
      to_port = 5601
      protocol = "tcp"
      cidr_block = ["0.0.0.0/0"]
      ipv6_cidr_blocks = "::/0"
      description = "ELK Stack"
    },
    {
      from_port = 80
      to_port = 80
      protocol = "tcp"
      cidr_block = ["0.0.0.0/0"]
      ipv6_cidr_blocks = "::/0"
      description = "Nginx"
    },
   ]
  tags = {
    Name = "ke-prod-elk-stack"
  }
}