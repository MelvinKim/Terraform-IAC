variable "public_subnet_cidrs" {
  type = list(string)
  description = "Public Subnet CIDR values"
}

variable "private_subnet_cidrs" {
 type        = list(string)
 description = "Private Subnet CIDR values"
}

variable "availability-zones" {
  type = list(string)
  description = "Availability Zones"
}

variable "vpc_id" {
  type = string
}

variable "internet_gateway_cidr_block" {
  type = string
}

variable "internet_gateway_id" {
  type = string
}

variable "route_table_tags" {
  type = object({
    Name = string
  })
}
