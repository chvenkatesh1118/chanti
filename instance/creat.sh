##!/bin/bash
#
#
#
#terraform init -backend-config=backend.tf
#
#terraform apply -auto-approve

 #!/bin/bash

aws ec2 terminate-instances --image-id ami-0d997c5f64a74852c --count 1 --instance-type t2.micro \
 --subnet-id subnet-0f42b250c3cf1d75c  --instance-ids i-0342d07d1f361a248
--security-group-ids sg-03439c9546a230549 \
--user-data file://creat.sh
