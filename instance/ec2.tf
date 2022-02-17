
provider "aws" {
  region = "us-east-1"
}

resource "aws_security_group" "sg1" {
    region =  "us-east-1"

  name        = "sg1"
  description = "Allow TLS inbound traffic"
  vpc_id      = "vpc-0bf57a4f41c708816"

  ingress {
    description      = "TLS from VPC"
    from_port        = 22
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]

  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "sg1"
  }
}