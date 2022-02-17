#!/bin/bash

rm -rf .terraform

terraform init -backend-config=ec2/terraform.tfsate

terraform apply -auto-approve