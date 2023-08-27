terraform {
  required_version = ">= 0.11, < 0.12"
  backend "s3" {
    bucket = <ENTER_YOUR_S3_BUCKET_NAME>
    region = "ap-south-1"
    key = "terraform"
    dynamodb_table = <ENTER_YOUR_DYNAMODB_TABLE_NAME>
  }
}

provider "aws" {
  region = "ap-south-1"
  version = "~> 2.0"
}

resource "aws_security_group" "example" {
  name = "${var.instance_security_group_name}"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
