#!/bin/bash



terraform init -backend-config=terraform.tfstate

terraform apply -auto-approve