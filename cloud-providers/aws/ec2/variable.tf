variable "ami_id" {
  type = string
  default = "ami-0cbd40f694b804622"
}

variable "instance_type" {
  type = string
  default = "t2.imcro"
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