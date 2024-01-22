module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "19.15.3"

  cluster_name = local.cluster_name
  cluster_version = var.cluster_version
  vpc_id = module.vpc.vpc_id
  subnet_ids = module.vpc.private_subnets
  cluster_endpoint_public_access = var.cluster_endpoint_public_access

  eks_managed_node_group_defaults = {
   ami_type = var.worker_nodes_ami_type
  }

  eks_managed_node_groups = {
    one = {
      name = var.node_group_1_name
      instance_types = var.worker_nodes_instance_types
      min_size     = 1
      max_size     = 3
      desired_size = 2
    }
    # two = {
    #   name = "node-group-2"
    #   instance_types = var.worker_nodes_instance_types
    #   min_size     = 1
    #   max_size     = 3
    #   desired_size = 2
    # }
  }
}