resource "aws_security_group" "all2" {
  name        = "all2"
  description = "Allow TLS inbound traffic"
  vpc_id      = "vpc-0bf57a4f41c708816"

  ingress {
    description      = "TLS from VPC"
    from_port        = 1
    to_port          = 8080
    protocol         = "tcp"
    cidr_blocks      = [ "0.0.0.0/0" ]

  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "all2"
  }
}



output "all2" {
  value = aws_security_group.all2.id
}
