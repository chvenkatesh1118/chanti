#!/bin/bash

rm -rf .terraform

terraform init -backend-config=terraform.tfstate

terraform apply -auto-approve