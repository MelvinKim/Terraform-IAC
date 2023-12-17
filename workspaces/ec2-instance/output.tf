output "instance_id" {
  value = aws_instance.example.id
}

output "instance_public_ipv4" {
  value = aws_instance.example.public_ip
}