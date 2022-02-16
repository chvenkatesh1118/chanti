#!/bin/bash

rm -rf .terraform

terraform init
terraform plan
terraform apply -auto-approve