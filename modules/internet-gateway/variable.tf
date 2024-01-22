variable "vpc_id" {
  type = string
}

variable "internet_gateway_tags" {
  type = object({
    Name = string
  })
}