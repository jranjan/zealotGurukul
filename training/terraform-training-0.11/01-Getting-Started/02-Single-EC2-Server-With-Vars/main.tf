terraform {
  required_version = ">= 0.11, < 0.12"
}

provider "aws" {
  region  = "ap-south-1"
  version = "~> 2.0"
}

resource "aws_instance" "example" {
  ami           = "${var.ec2_machine_ami}"
  instance_type = "t2.micro"
  tags = {
    Name = "${var.ec2_machine_name}"
  }
}
