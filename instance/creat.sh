#!/bin/bash

rm -rf .terraform

terraform init -backend-config=terraform/.terrafom/terraform.statefile

terraform apply -auto-approve