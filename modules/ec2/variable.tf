variable "ami" {
  type = string
  description = "Instance AMI"
}

variable "region" {
  type = string
  default = "eu-central-1"
}

variable "instance_type" {
  type = string
  description = "Instance type"
  default = "t2.micro"
}

variable "subnet_id" {
  type = string
  description = "subnet ID"
}

variable "vpc_security_group_ids" {
  type = list(string)
  description = "security groups attached to the ec2 instance"
}

variable "key_pair_name" {
  type = string
  description = "ec2 instance key pair"
}

variable "tags" {
  type = object({
    Name = string
  })
  description = "ec2 instance tags"
}