provider "aws" {
  region = "ap-south-1"
  version = "~> 2.0"
}

module "s3Module" {
  source = "../module/s3"

  s3_bucket_name = "${var.s3_module_bucket_name}"
}
