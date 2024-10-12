resource "aws_subnet" "public" {
  availability_zone = "us-east-1a"
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "Main"
  }
}

resource "aws_internet_gateway" "gateway" {
  vpc_id = aws_vpc.vpc1.id
}

resource "aws_subnet" "privite" {
  availability_zone = ""
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "Main"
  }
}

resource "aws_route_table" "route_public" {
 vpc_id = aws_vpc.vpc1.id 
 route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gwy1.id
 }
}
