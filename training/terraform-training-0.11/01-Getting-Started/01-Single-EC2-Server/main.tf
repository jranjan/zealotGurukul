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
   tags = {
     Name = "jyoti-instance"
   }
 }
