
# public subnet
resource "aws_subnet" "public1" {
    availability_zone = "us-east-1a"
    
    map_public_ip_on_launch = true
    vpc_id = aws_vpc.main_vpc.id
    tags={
        Name = "public-subnet-1"
        env = "dev"
    }
}

