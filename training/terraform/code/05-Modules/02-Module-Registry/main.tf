provider "aws" {
  region = "ap-south-1"
  version = "~> 2.0"
}

module "web_server_sg" {
  source = "terraform-aws-modules/security-group/aws//modules/http-80"
  version = "2.16.0"

  name        = "${var.sg_name}"
  description = "Security group for web-server with HTTP ports open within VPC"
  vpc_id      = "vpc-d16e58b9"

  ingress_cidr_blocks = ["10.10.0.0/16"]
}
