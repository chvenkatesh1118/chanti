terraform {
  backend "s3"
  config =  {
    bucket = "chanti.ch"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}