terraform {
  required_version = ">= 0.11, < 0.12"
}

provider "aws" {
  region = "ap-south-1"
  version = "~> 2.0"
}

resource "aws_instance" "example" {
  ami           = "ami-0cb0e70f44e1a4bb5"
  instance_type = "t2.micro"
  security_groups = ["${aws_security_group.example.name}"]
  key_name = "salesforce-keypair"
  tags = {
    Name = "${var.ec2_machine_name}"
  }
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
