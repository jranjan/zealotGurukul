terraform {
  required_version = ">= 0.11, < 0.12"
}


resource "aws_s3_bucket" "bucket" {
  bucket = "${var.s3_bucket_name}"
}
