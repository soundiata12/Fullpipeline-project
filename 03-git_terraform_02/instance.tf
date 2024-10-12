resource "aws_instance" "ubuntu" {
  ami           = ami-0866a3c8686eaeeba
  instance_type = "t2.micro"
  security_groups = ""
  user_data = ""
  tags = {
    Name = "ubuntu-public-ec2-instance"
  }
}