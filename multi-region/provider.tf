provider "aws" {
  alias = "us-east-1" # multi-provider
  region = "us-east-1"
}

provider "aws" {
  alias = "eu-central-1" # multi-provider
  region = "eu-central-1"
}