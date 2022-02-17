#!/bin/bash

rm -rf .terraform

terraform init -backend-config=terraform/ec2

terraform apply -auto-approve