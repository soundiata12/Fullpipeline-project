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
  ami = "Mistakossiami"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.public1.id
  security_groups = [aws_security_group.allow_tls.name]
  tags = {
    Name = "Dev_server"
    Team = "DevOps"
  }
  }
  