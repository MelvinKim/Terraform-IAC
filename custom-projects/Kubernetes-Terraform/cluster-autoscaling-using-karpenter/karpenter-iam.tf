resource "aws_iam_role" "karpenter_instance_node_role" {
  name = "karpenter_instance_node_role"
  assume_role_policy = jsonencode({
    Version =  "2012-10-17"
    Statement = [
        {
            "Effect": "Allow"
            "Principal": {
                "Service": "eks.amazonaws.com"
            }
            "Action": "sts:AssumeRole"
        }
    ]
  })
#   attach managed IAM policies
managed_policy_arns = [
    "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy",
    "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy",
    "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly",
    "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
]
}

resource "aws_iam_policy" "karpenter_policy" {
  name = "karpenter_policy"
  description = "Karpenter's role policy"
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
        {
            "Action": [
                "ssm:GetParameter",
                "iam:PassRole",
                "ec2:DescribeImages",
                "ec2:RunInstances",
                "ec2:DescribeSubnets",
                "ec2:DescribeSecurityGroups",
                "ec2:DescribeLaunchTemplates",
                "ec2:DescribeInstances",
                "ec2:DescribeInstanceTypes",
                "ec2:DescribeInstanceTypeOfferings",
                "ec2:DescribeAvailabilityZones",
                "ec2:DeleteLaunchTemplate",
                "ec2:CreateTags",
                "ec2:CreateLaunchTemplate",
                "ec2:CreateFleet",
                "ec2:DescribeSpotPriceHistory",
                "pricing:GetProducts"
            ],
            "Effect": "Allow",
            "Resource": "*",
            "Sid": "Karpenter"
        },
        {
            "Action": "ec2:TerminateInstances",
            "Condition": {
                "StringLike": {
                    "ec2:ResourceTag/Name": "*karpenter*"
                }
            },
            "Effect": "Allow",
            "Resource": "*",
            "Sid": "ConditionalEC2Termination"
        }
    ]
  })
}

resource "aws_iam_role" "karpenter_role" {
  name = "karpenter_role"
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
        {
            "Effect": "Allow",
            "Principal": {
                "Federated": "<arn:aws:iam::YOUR_ACCOUNT_ID:oidc-provider/YOUR_CLUSTER_ISSUER_URL>"
            },
            "Action": "sts:AssumeRole",
            "Sid": ""
        }
    ]
  })
# attach previousl defined policy
inline_policy {
  name = "KarpenterPolicyAttachment"
  policy = aws_iam_policy.karpenter_policy.policy
}
}