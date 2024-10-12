resource "aws_subnet" "public" {
  availability_zone = "us-east-1a"
  vpc_id     = aws_vpc.Dev_02.id
  cidr_block = "192.168.1.0/24"

  tags = {
    Name = "Dev_team"
  }
}

resource "aws_internet_gateway" "gateway" {
  vpc_id = aws_vpc.Dev_02.id
}

resource "aws_subnet" "privite" {
  availability_zone = ""
  vpc_id     = aws_vpc.Dev_02.id
  cidr_block = "192.168.2.0/24"

  tags = {
    Name = "Dev_team"
  }
}

resource "aws_route_table" "route_public" {
 vpc_id = aws_vpc.Dev_02.id
 route {
    cidr_block = "192.168.3.0/24"
    gateway_id = aws_internet_gateway.gwy1.id
 }
}
