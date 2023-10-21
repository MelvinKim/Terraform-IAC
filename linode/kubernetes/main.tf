# contains actual code for creating the k8s cluster.
terraform {
  required_providers {
    linode = {
        source = "linode/linode"
        version = "1.24.0"
    }
  }
}

provider "linode" {
  token = var.linode_token
}

resource "linode_lke_cluster" "awesomesre_cluster" {
  label = "awesomesre"
  k8s_version = "1.27"
  region = "eu-west"

  pool {
    type = "g6-standard-2"
    count = 2
  }
}