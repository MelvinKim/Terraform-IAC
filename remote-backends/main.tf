resource "aws_s3_bucket" "tfstate" {
  bucket = "melvinkimathi-tfstate"

    tags = {
      Name = "prod/tfstate"
    }
}

resource "aws_dynamodb_table" "tfstate_lock" {
  name = "prod/tfstate_lock"
  billing_mode = "PAY_PER_REQUEST"
  hash_key = "LockID"

    tags = {
      Name = "LockID"
      type = "S"
      Env = "prod"
    }
}