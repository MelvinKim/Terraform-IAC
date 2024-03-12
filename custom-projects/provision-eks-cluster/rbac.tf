module "allow_eks_read_only_iam_policy" {
  source = "terraform-aws-modules/iam/aws//modules/iam-policy"
  version = "5.30.0"

  name = "allow-eks-read-only-access"
  create_policy = true

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
				"eks:ListAccessEntries",
				"eks:ListAccessPolicies",
				"eks:ListAddons",
				"eks:ListAssociatedAccessPolicies",
				"eks:ListClusters",
				"eks:ListEksAnywhereSubscriptions",
				"eks:ListFargateProfiles",
				"eks:ListIdentityProviderConfigs",
				"eks:ListInsights",
				"eks:ListNodegroups",
				"eks:ListPodIdentityAssociations",
				"eks:ListUpdates",
				"eks:AccessKubernetesApi",
				"eks:DescribeAccessEntry",
				"eks:DescribeAddon",
				"eks:DescribeAddonConfiguration",
				"eks:DescribeAddonVersions",
				"eks:DescribeCluster",
				"eks:DescribeEksAnywhereSubscription",
				"eks:DescribeFargateProfile",
				"eks:DescribeIdentityProviderConfig",
				"eks:DescribeInsight",
				"eks:DescribeNodegroup",
				"eks:DescribePodIdentityAssociation",
				"eks:DescribeUpdate",
				"eks:ListTagsForResource"
			]
        Effect   = "Allow"
        Resource = "arn:aws:eks:eu-central-1:${var.aws_account_id}:cluster/${local.cluster_name}",
      },
    ]
  })
}

module "eks_devs_iam_role" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-assumable-role"
  version = "5.30.0"

  role_name         = "dev-eks-read-only"
  create_role       = true
  role_requires_mfa = false

  custom_role_policy_arns = [module.allow_eks_read_only_iam_policy.arn]

  trusted_role_arns = compact([
    "arn:aws:iam::${var.aws_account_id}:root"
  ])
}

module "allow_assume_eks_devs_iam_policy" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-policy"
  version = "5.30.0"

  name          = "allow-assume-eks-devs-iam-role"
  create_policy = true

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "sts:AssumeRole",
        ]
        Effect   = "Allow"
        Resource = module.eks_devs_iam_role.iam_role_arn
      },
    ]
  })
}

module "eks_devs_iam_group" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-group-with-policies"
  version = "5.30.0"

  name                              = "eks-devs"
  attach_iam_self_management_policy = false
  create_group                      = true
  group_users                       = [data.aws_iam_user.eks-dev-user.user_name]
  custom_group_policy_arns          = [module.allow_assume_eks_devs_iam_policy.arn]
}
# custom_group_policy_arns          = [module.allow_assume_eks_devs_iam_policy.arn, module.allow_eks_read_only_iam_policy.arn]

