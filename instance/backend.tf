
terraform {
  backend  "s3"  {
    bucket =  "chanti.ch"
    key = "terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}