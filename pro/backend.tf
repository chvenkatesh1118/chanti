terraform {
backend "s3"  {

bucket =  "chanti.ch"
key = "chanti/terraform.tfstate"
region = "us-east-1"


  }
}

