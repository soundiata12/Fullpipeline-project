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
  ami = "sksksk"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.public1.id
  tags = {
    Name = "Dev_server"
    Team = "DevOps"
  }
  }
  