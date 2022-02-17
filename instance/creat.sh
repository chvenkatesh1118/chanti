#!/bin/bash

rm -rf .terraform

terraform init -backend-config=terraform

terraform apply -auto-approve