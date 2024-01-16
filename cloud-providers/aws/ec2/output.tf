output "instance_id" {
  value = aws_instance.prod-prometheus.id
}

output "instance_public_ipv4" {
  value = aws_instance.prod-prometheus.public_ip
}
