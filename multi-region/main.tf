resource "aws_instance" "example" {
  ami = "ami-0cbd40f694b804622"
  instance_type = "t2.micro"
  subnet_id = "subnet-0b5710438e72a0461"
  provider = aws.us-east-1 # Specify the provider's region that you want to use

  tags = {
    Name = "ExampleInstance-us-east-1" # Assign a name to the EC2 instance
  }
}

resource "aws_instance" "example" {
  ami = "ami-0cbd40f694b804622"
  instance_type = "t2.micro"
  subnet_id = "subnet-0b5710438e72a0461"
  provider = aws.eu-central-1 # Specify the provider's region that you want to use


  tags = {
    Name = "ExampleInstance-eu-central-1" # Assign a name to the EC2 instance
  }
}