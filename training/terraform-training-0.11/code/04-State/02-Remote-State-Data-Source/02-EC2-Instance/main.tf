terraform {
  required_version = ">= 0.11, < 0.12"
}

provider "aws" {
  region = "ap-south-1"
  version = "~> 2.0"
}

data "terraform_remote_state" "sg" {
  backend = "s3"

  config {
    bucket = <ENTER_YOUR_S3_BUCKET_NAME>
    region = "ap-south-1"
    key = "terraform"
    dynamodb_table = <ENTER_YOUR_DYNAMODB_TABLE_NAME>
  }
}

resource "aws_instance" "example" {
  ami           = "ami-0cb0e70f44e1a4bb5"
  instance_type = "t2.micro"
  security_groups = ["${data.terraform_remote_state.sg.security_group_name}"]
  key_name = "salesforce-keypair"
  tags = {
    Name = "${var.ec2_machine_name}"
  }
}
