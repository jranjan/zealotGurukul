terraform {
  required_version = ">= 0.11, < 0.12"
}

provider "aws" {
  region = "ap-south-1"
  version = "~> 2.0"
}

resource "aws_dynamodb_table" "terraform_state_lock" {
  name           = "${var.dynamodb_table_name}"
  read_capacity  = 5
  write_capacity = 5
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}
