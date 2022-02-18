#!/bin/bash

provider "aws" {
  region = "us-east-1"
}


rm -rf .terraform

terraform init

terraform apply -auto-approve