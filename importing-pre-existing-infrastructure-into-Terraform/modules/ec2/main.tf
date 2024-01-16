# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform
resource "aws_instance" "example" {
  ami                                  = "ami-01728bd5cea21d157"
  associate_public_ip_address          = true
  availability_zone                    = "eu-central-1b"
  disable_api_stop                     = false
  disable_api_termination              = false
  ebs_optimized                        = false
  get_password_data                    = false
  hibernation                          = false
  host_id                              = null
  host_resource_group_arn              = null
  iam_instance_profile                 = "eks-a6c5f5d2-504d-9267-4362-1ae5a3cbe157"
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "r5a.2xlarge"
  ipv6_address_count                   = 0
  ipv6_addresses                       = []
  key_name                             = null
  monitoring                           = true
  placement_group                      = null
  placement_partition_number           = 0
  private_ip                           = "<private-ip>"
  secondary_private_ips                = ["<secondary-private-ips-array>"]
  security_groups                      = ["<security-group-array>"]
  source_dest_check                    = true
  subnet_id                            = "subnet-5236c428"
  tags = {
    Cost                                        = "ec2"
    Country                                     = "kenya"
    Department                                  = "engineering"
    Environment                                 = "prod"
    Environment-Country                         = "prod-kenya"
    Name                                        = "KE-PROD-CLUSTER"
    Patch-Group                                 = "prod"
    Production                                  = "yes"
    Service                                     = "k8s"
    Spend-Category                              = "prod-kenya-k8s"
    "eks:cluster-name"                          = "KE-PROD-CLUSTER"
    "eks:nodegroup-name"                        = "KE-PROD-CLUSTER"
    "k8s.io/cluster-autoscaler/KE-PROD-CLUSTER" = "owned"
    "k8s.io/cluster-autoscaler/enabled"         = "true"
    "kubernetes.io/cluster/KE-PROD-CLUSTER"     = "owned"
  }
  tags_all = {
    Cost                                        = "ec2"
    Country                                     = "kenya"
    Department                                  = "engineering"
    Environment                                 = "prod"
    Environment-Country                         = "prod-kenya"
    Name                                        = "KE-PROD-CLUSTER"
    Patch-Group                                 = "prod"
    Production                                  = "yes"
    Service                                     = "k8s"
    Spend-Category                              = "prod-kenya-k8s"
    "eks:cluster-name"                          = "KE-PROD-CLUSTER"
    "eks:nodegroup-name"                        = "KE-PROD-CLUSTER"
    "k8s.io/cluster-autoscaler/KE-PROD-CLUSTER" = "owned"
    "k8s.io/cluster-autoscaler/enabled"         = "true"
    "kubernetes.io/cluster/KE-PROD-CLUSTER"     = "owned"
  }
  tenancy                     = "default"
  user_data                   = "9add7ea19f50a1275f8e7f59695f2996bb448aed"
  user_data_base64            = null
  user_data_replace_on_change = null
  volume_tags                 = null
  vpc_security_group_ids      = ["<vpc-security-group>"]
  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }
  cpu_options {
    amd_sev_snp      = null
    core_count       = 4
    threads_per_core = 2
  }
  enclave_options {
    enabled = false
  }
  launch_template {
    name    = "eks-a6c5f5d2-504d-9267-4362-1ae5a3cbe157"
    version = "1"
  }
  maintenance_options {
    auto_recovery = "default"
  }
  metadata_options {
    http_endpoint               = "enabled"
    http_protocol_ipv6          = "disabled"
    http_put_response_hop_limit = 2
    http_tokens                 = "required"
    instance_metadata_tags      = "disabled"
  }
  private_dns_name_options {
    enable_resource_name_dns_a_record    = false
    enable_resource_name_dns_aaaa_record = false
    hostname_type                        = "ip-name"
  }
  root_block_device {
    delete_on_termination = true
    encrypted             = true
    iops                  = 100
    kms_key_id            = "<aws-kms-key-id>"
    tags = {
      Cost                 = "ec2"
      Country              = "kenya"
      Department           = "engineering"
      Environment          = "prod"
      Name                 = "KE-PROD-CLUSTER"
      Patch-Group          = "prod"
      "eks:cluster-name"   = "KE-PROD-CLUSTER"
      "eks:nodegroup-name" = "KE-PROD-CLUSTER"
    }
    throughput  = 0
    volume_size = 20
    volume_type = "gp2"
  }
}
