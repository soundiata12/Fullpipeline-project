
resource "aws_instance" "centos_instance" {
  ami           = "ami-0f2b4fc905b0bd1d1"  
  instance_type = "t2.micro"

  key_name               = aws_key_pair.devop
  security_groups        = [aws_security_group.instance_sg.   ]

  tags = {
    Name = "mycentOs_instance"
  }
}

output "instance_ip" {
  description = "Private IP of the instance"
  value       = aws_instance.centos_instance.private_ip
}