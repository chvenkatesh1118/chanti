resource "aws_instance" "instance" {
  ami           = "ami-0d997c5f64a74852c"
  instance_type = "t2.micro"
  subnet_id = "subnet-0f42b250c3cf1d75c"
  vpc_security_group_ids = aws_security_group.all2.id

  tags = {
    Name = var.NAME
  }
}

provider "aws" {
  region = "us-east-1"
}

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

r

output "all2" {
  value = aws_security_group.all2.id
}
