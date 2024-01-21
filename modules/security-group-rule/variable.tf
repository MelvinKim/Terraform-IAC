variable "region" {
  type = string
  default = "eu-central-1"
}

variable "sg_rules" {
  type = list(object({
    from_port = number
    to_port = number
    protocol = string
    cidr_block = list(string)
    ipv6_cidr_blocks = string
    description = string
  }))
}

variable "security_group_id" {
  type = string
}

variable "security_group_rules_type" {
  type = string
}