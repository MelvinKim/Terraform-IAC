resource "linode_firewall" "firewall" {
  label = var.firewall_label

  inbound {
    label = "allow-http"
    action = "ACCEPT"
    protocol = "TCP"
    ports = "80"
    ipv4 = ["0.0.0.0/0"]
    ipv6 = [ "::/0" ]
  }
  inbound {
    label = "allow-ssh"
    action = "ACCEPT"
    protocol = "TCP"
    ports = "22"
    ipv4 = var.my_ipv4_address
    ipv6 = var.my_ipv6_address
  }
  inbound_policy = "DROP"

  outbound {
    label = "allow-all-outbound"
    action = "ACCEPT"
    protocol = "TCP"
    ipv4 = ["0.0.0.0/0"]
    ipv6 = ["::/0"]
  }
  outbound_policy = "DROP"

  linodes = [linode_instance.vm.id]
}

resource "linode_instance" "vm" {
  image = var.instance_image
  label = var.instance_label
  group = var.instance_group
  region = var.instance_region
  type = var.instance_type
  authorized_keys = var.authorized_keys
  root_pass = var.root_password
}