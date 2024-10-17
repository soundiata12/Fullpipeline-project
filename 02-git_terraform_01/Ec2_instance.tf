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
  ami = "ami-0866a3c8686eaeeba"
  instance_type = "t2.micro"
  key_name = "ade12"
  tags = {
    Name = "Dev_server"
    Team = "DevOps"
  }
  }
  
  resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "main"
  }
}