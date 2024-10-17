
 # Create a VPC
resource "aws_vpc" "main_vpc" {
  cidr_block = "192.168.0.0/24"
  tags = {
    Name = "my-amanda.vpc"
  }
}
