# reference created module
module "ec2_instance" {
  source = "./ec2-instance"
  ami = var.ami
  # picks up instance type based on the current workspace
  instance_type = lookup(var.instance_types, terraform.workspace, "t2.micro")
  # instance_type = var.instance_type
  subnet_id = var.subnet_id
  region = var.region
}