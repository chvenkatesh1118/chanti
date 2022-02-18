terraform {
  backend "s3" {
    bucket = "chanti.ch"
    key    = "back/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}
