locals {
  cluster_name = "prod-cluster"
  vpc_name = "prod-vpc"

  public_subnet_tags = {
    "kubernetes.io/cluster/${local.cluster_name}" = "shared"
    "kubernetes.io/role/elb"                      = 1
    # add karpenter tags
    "Key" = "karpenter.sh/discovery"
    "Value" = "prod-cluster"
  }
  private_subnet_tags = {
    "kubernetes.io/cluster/${local.cluster_name}" = "shared"
    "kubernetes.io/role/internal-elb"             = 1
    "Key" = "karpenter.sh/discovery"
    "Value" = "prod-cluster"
  }
  default_security_group_tags = {
    "Key" = "karpenter.sh/discovery"
    "Value" = "prod-cluster"
  }
}