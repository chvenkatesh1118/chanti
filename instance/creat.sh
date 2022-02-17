#!/bin/bash

rm -rf .terraform

terraform init -backend-config=terraform-terraform.tfstate

terraform apply -auto-approve