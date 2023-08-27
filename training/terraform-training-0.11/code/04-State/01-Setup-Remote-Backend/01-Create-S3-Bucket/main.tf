terraform {
  required_version = ">= 0.11, < 0.12"
}

provider "aws" {
  region = "ap-south-1"
  version = "~> 2.0"
}

resource "aws_s3_bucket" "bucket" {
  bucket = "${var.s3_jyoti_bucket}"
  force_destroy = true
}
