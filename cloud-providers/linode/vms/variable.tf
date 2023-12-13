variable "linode_token" {
    description = "linode API Token"
    type = string
}

variable "authorized_keys" {
  description = "linode's SSH keys"
  type = list(string)
  default = [ 
    "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCbe3byC9Ijill0gi+7G/rcAaYdU7vOFdIHxkGjO5Y74F6Cchj4vm4UlqTAxLmewqKpDqN9z9+qUNl9gL08Gt0SdyTByeONqpa8l8b6QZ61oKcFkSFlIUfywHARhrXpwEP97Lx1HSAPDBMyh6YMiryIsgGGrzbGxGQ7XeGrFmNojnf1qgA5EvxuxT7kp4fCOgAhIcJoviQwhcAWBlLiBsiekXqhI/NSO5OHUQj7PhGhuEymXiW6PVHXm5adi0YuICoUQljsrXMNp1IxTpDFTA2e9UGNN0js2T1HQshAMjEJ/Ge3DjtBuqLmD18Kx0a+k+pgYHgQ6Z5sL2OcSdN/lcEmWIIp1VbIeWaGaAVUWuLDJFQJBscH6Q3al6dZ9DPcYZKO7Md53IDvjnjMOnurEkP+wMBz6NHXUFbpcUbKCXR3ICILzbjupvlRiX6gOVtamo/CxDMd9XeM/dXxx7W1GYEu6yIp1rr58nYrc9tU2gvU7DE/TBKeQdgm5CTjyGiZ5SE= karutikimathi@MKIMATHI-ENG.local"
    ]
}

variable "root_password" {
  description = "root password"
  type = string
}

variable "instance_image" {
  description = "instance image"
  type = string
  default = "linode/ubuntu22.04"
}

variable "instance_label" {
  description = "instance label"
  type = string
  default = "prometheus"
}

variable "instance_group" {
  description = "instance group"
  type = string
  default = "awesomesre1"
}

variable "instance_region" {
  description = "instance region"
  type = string
  default = "eu-central"
}

variable "instance_type" {
  description = "instance type"
  type = string
  default = "g6-standard-2"
}

variable "firewall_label" {
  description = "firewall label"
  type = string
  default = "linode_firewall"
}

variable "my_ipv4_address" {
  description = "SSH IP"
  type = list(string)
}

variable "my_ipv6_address" {
  description = "SSH IP"
  type = list(string)
}