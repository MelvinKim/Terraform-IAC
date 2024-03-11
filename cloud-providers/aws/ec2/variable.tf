variable "ami_id" {
  type = string
}

variable "instance_type" {
  type = string
  default = "t2.micro"
}

variable "subnet_id" {
  type =string
  description = "subnet id"
}

variable "instance_name_tag" {
  type = string
  description = "Instance name"
}

variable "aws_region" {
  type = string
  description = "AWS region"
}

variable "sg_ingress_rules" {
  type = list(object({
    from_port = number
    to_port = number
    protocol = string
    cidr_block = list(string)
    ipv6_cidr_blocks = string
    description = string
  }))
  default = [
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
    {
      from_port = 5432
      to_port = 5432
      protocol = "tcp"
      cidr_block = ["0.0.0.0/0"]
      ipv6_cidr_blocks = "::/0"
      description = "PostgreSQL"
    },
   ]
}

variable "sg_egress_rules" {
  type = list(object({
    from_port = number
    to_port = number
    protocol = string
    cidr_block = list(string)
    ipv6_cidr_blocks = string
    description = string
  }))
  default = [
    {
      from_port = 0
      to_port = 0
      protocol = "-1"
      cidr_block = ["0.0.0.0/0"]
      description = "egress ingress rule"
      ipv6_cidr_blocks = "::/0"
    },
  ]
}

variable "security_group_name" {
  type = string
}

variable "key_pair_name" {
  type = string
}

variable "egress_security_group_rules_type" {
  type = string
  default = "egress"
}

variable "ingress_security_group_rules_type" {
  type = string
  default = "ingress"
}