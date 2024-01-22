variable "vpc_cidr_block" {
  type = string
}

variable "vpc_tags" {
  type = object({
    Name = string
  })
}