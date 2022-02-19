#!/bin/bash



terraform init -backend-config=backend.tf

terraform apply -auto-approve