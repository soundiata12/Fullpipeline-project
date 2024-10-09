 terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.70.0"
    }
  }
}


 # Create a VPC
resource "aws_vpc" "main_vpc" {
  cidr_block = "192.168.0.0/24"
  tags = {
    Name = "my-amanda.vpc"
  }
}
