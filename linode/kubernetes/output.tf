resource "local_file" "kubeconfig" {
  depends_on = [ linode_lke_cluster.awesomesre_cluster ]
  filename = "linode-kube-config"
  content = base64decode(linode_lke_cluster.awesomesre_cluster.kubeconfig)
}