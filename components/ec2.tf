resource "aws_instance" "instance" {
  ami           = "ami-0d997c5f64a74852c"
  instance_type = "t2.micro"
  subnet_id = "subnet-0f42b250c3cf1d75c"
 vpc_security_group_ids = "sgr-01e7c0929fcfdf360"

  tags = {
    Name = var.NAME
  }
}

provider "aws" {
  region = "us-east-1"
}

