variable "environment" {
  description = "Application Environment"
  default = "dev"
}

variable "prod_cidr_block" {
  default = "172.31.0.0/16"
}

variable "dev_cidr_block" {
  default = "192.34.0.0/16"
}