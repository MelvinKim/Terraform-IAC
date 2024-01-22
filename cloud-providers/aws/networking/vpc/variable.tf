variable "vpc_cidr_block" {
  type = string
}

variable "public_subnet_cidrs" {
  type = list(string)
}

variable "private_subnet_cidrs" {
  type = list(string)
}

variable "availabilty_zones" {
  type = list(string)
}

variable "internet_gateway_cidr_block" {
  type = string
  default = "0.0.0.0/0"
}