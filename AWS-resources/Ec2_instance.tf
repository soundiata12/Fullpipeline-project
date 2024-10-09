terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.70.0"
    }
  }
}

provider "aws" {
  
  region = "us-east-1"
}


resource "aws_instance" "Dev_server" {
  instance_type = "t2.micro"
  tags = {
    Name = "Dev_server"
    Team = "DevOps"
  }
  }
  