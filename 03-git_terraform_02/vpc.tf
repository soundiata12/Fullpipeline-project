# Create a vpc
resource "aws_vpc" "Dev_02" {
 cidr_block = "192.168.0.0/16" 
 instance_tenancy = "default"
 tags = {
    Name = "Dev"
    env = ""
    Team = "DevOps"
 }
}