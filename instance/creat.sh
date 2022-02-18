#!/bin/bash



terraform init -backend-config=backend.tfvars

terraform apply -auto-approve