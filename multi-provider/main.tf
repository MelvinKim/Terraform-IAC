resource "aws_instance" "example" {
  ami = "ami-0cbd40f694b804622"
  instance_type = "t2.micro"
  subnet_id = "subnet-0b5710438e72a0461"

  tags = {
    Name = "ExampleInstance" # Assign a name to the EC2 instance
  }
}