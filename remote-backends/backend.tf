terraform {
# configure s3 as a remote backend
  backend "s3" {
    bucket = "melvinkimathi-tfstate"
    key = "prod/terrafrom.tfstate" # eg prod/terrafrom.tfstate, dev/terrafrom.tfstate
    region = "us-west-1"
    encrypt = true
    dynamodb_table = "prod/tfstate_lock"
  }
}

# Terraform will require a couple of permissions
# https://developer.hashicorp.com/terraform/language/settings/backends/s3#s3-bucket-permissions
