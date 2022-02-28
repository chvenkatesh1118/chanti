resource "aws_instance" "instance"  {
  ami            = "ami-0d997c5f64a74852c"
  instance_type  = "t2.micro"
  subnet_id      = "subnet-05149ab4e1f58d6b4"
  security_groups = ["default"]




  tags = {
    Name = "frontend"
  }
}



provider "aws" {
  region = "us-east-1"
}

