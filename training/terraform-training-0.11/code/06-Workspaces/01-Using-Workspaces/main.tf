terraform {
  required_version = ">= 0.11, < 0.12"
}

provider "aws" {
  region  = "ap-south-1"
  version = "~> 2.0"
}

resource "aws_s3_bucket" "example" {
  bucket = "${terraform.workspace}-bucket-${var.bucket_suffix}"
  acl    = "private"
}
