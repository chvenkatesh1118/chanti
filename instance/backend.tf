
terraform {
  backend  "s3"  {
    bucket =  "chanti.ch"
    key = "s3://chanti.ch/terraform/.terrafom/terraform.statefile"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}