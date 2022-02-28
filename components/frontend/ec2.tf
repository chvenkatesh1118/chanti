resource "aws_instance" "instance" {
  ami            = "ami-0d997c5f64a74852c"
  instance_type  = "t2.micro"
  subnet_id      = "subnet-0f42b250c3cf1d75c"
  security_group = "sg-03439c9546a230549"

}


  tags = {
    Name = "frontend"
  }



provider "aws" {
  region = "us-east-1"
}

