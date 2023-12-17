variable "ami" {
  description = "Instance AMI"
  default = "ami-0cbd40f694b804622"
}

variable "instance_type" {
  description = "Instance type"
}

variable "region" {
  description = "AWS region"
}

variable "subnet_id" {
  description = "subnet ID"
}