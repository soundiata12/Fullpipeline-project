resource "aws_security_group" "security_group_id" {
  name = "security_group_id"
  vpc_id      =  "aws_vpc.Dev_02.id"
  tags = {
    Name = "security_group_id"
  }

  ingress {
    protocol  = "tcp"
    from_port = 22
    to_port   = 22
  }
}