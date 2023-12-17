variable "ami" {
  description = "Instance AMI"
}

variable "instance_type" {
  description = "Instance type"
  default = "t2.micro"
}

variable "region" {
  description = "AWS region"
}

variable "subnet_id" {
  description = "subnet ID"
}