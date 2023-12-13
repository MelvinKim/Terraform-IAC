output "linode_ip" {
  value = linode_instance.vm.ip_address
}

output "linode_instance_label" {
  value = linode_instance.vm.label
}

output "linode_firewall_label" {
  value = linode_firewall.firewall.label
}