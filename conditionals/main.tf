resource "aws_security_group" "example" {
  name = "example-sg"
  description = "Example Security Group"

  ingress = {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    # conditional check
    cidr_blocks = var.environment == "prod" ? [var.prod_cidr_block] : [var_dev_cidr_block]
  }
}