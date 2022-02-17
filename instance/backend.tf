
terraform {
  backend  "s3"  {
    bucket =  "chanti.ch"
    key = "terraform/ec2/terraform.tfsate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}