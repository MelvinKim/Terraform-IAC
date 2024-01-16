resource "aws_eks_cluster" "example" {
  enabled_cluster_log_types = []
  name                      = "KE-PROD-CLUSTER"
  role_arn                  = "arn:aws:iam::364491143390:role/KE-PROD-CLUSTER-ROLE-20231120072233497000000005"
  tags = {
    Country             = "kenya"
    Environment         = "prod"
    Environment-Country = "prod-kenya"
    Name                = "KE-PROD-CLUSTER"
    Patch-Group         = "prod"
    Production          = "yes"
    Service             = "k8s"
    Spend-Category      = "prod-kenya-k8s"
    created_by          = "terraform"
    workspace           = "default"
  }
  tags_all = {
    Country             = "kenya"
    Environment         = "prod"
    Environment-Country = "prod-kenya"
    Name                = "KE-PROD-CLUSTER"
    Patch-Group         = "prod"
    Production          = "yes"
    Service             = "k8s"
    Spend-Category      = "prod-kenya-k8s"
    created_by          = "terraform"
    workspace           = "default"
  }
  version = "1.27"
  encryption_config {
    resources = ["secrets"]
    provider {
      key_arn = "arn:aws:kms:eu-central-1:364491143390:key/6d12d728-c6e5-4907-acad-c9b68664609f"
    }
  }
  kubernetes_network_config {
    ip_family         = "ipv4"
    service_ipv4_cidr = "10.100.0.0/16"
  }
  vpc_config {
    endpoint_private_access = false
    endpoint_public_access  = true
    public_access_cidrs     = ["0.0.0.0/0"]
    security_group_ids      = ["sg-0658d5e779f7c5155"]
    subnet_ids              = ["subnet-234be74b", "subnet-5236c428", "subnet-79edd133"]
  }
}
