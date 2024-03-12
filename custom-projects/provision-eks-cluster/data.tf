data "aws_availability_zones" "available" {
  filter {
    name = "opt-in-status"
    values = ["opt-in-not-required"]
  }
}

data "aws_iam_user" "eks-dev-user" {
  user_name = "eks-dev"
}