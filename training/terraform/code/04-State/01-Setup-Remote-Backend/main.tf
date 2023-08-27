terraform {
  required_version = ">= 0.11, < 0.12"
  backend "s3" {
    bucket = "mybucket-jyoti"
    region = "ap-south-1"
    key = "terraform"
    dynamodb_table = "jyoti-persistence"
  }
}

provider "aws" {
  region = "ap-south-1"
  version = "~> 2.0"
}

resource "aws_instance" "ec2_instance" {
 ami = "ami-0cb0e70f44e1a4bb5"
 instance_type = "t2.micro"
 tags = {
   Name = "${var.ec2_machine_name}"
 }
}

output "ip" {
 value = "${aws_instance.ec2_instance.public_ip}"
}
