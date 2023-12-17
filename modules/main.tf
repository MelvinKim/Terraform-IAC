# reference created module
module "ec2_instance" {
  source = "./ec2-instance"
  ami = var.ami
  instance_type = var.instance_type
  subnet_id = var.subnet_id
  region = var.region
}