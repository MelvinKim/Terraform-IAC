variable "ami" {
  description = "Instance AMI"
  default = "ami-0cbd40f694b804622"
}

variable "instance_type" {
  description = "Instance type"
}

variable "instance_types" {
  type = map(string)

  default = {
    "dev" = "t2.micro"
    "dev" = "t2.medium"
    "prod" = "t2.xlarge"
  }
}

variable "region" {
  description = "AWS region"
}

variable "subnet_id" {
  description = "subnet ID"
}