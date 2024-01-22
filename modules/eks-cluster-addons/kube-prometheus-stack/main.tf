resource "helm_release" "kube_prometheus_stack" {
  name = "kube-prometheus-stack"

  repository = "https://github.com/prometheus-community/helm-charts/tree/main/charts"
  chart      = "kube-prometheus-stack"
  namespace  = "monitoring"
  version    = "56.0.2"
}