resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic and all outbound traffic"
<<<<<<< HEAD
  vpc_id      = aws_vpc.main_vpc.id
=======
  vpc_id      = aws_vpc.main.id
>>>>>>> tired

  tags = {
    Name = "allow_tls"
  }
}