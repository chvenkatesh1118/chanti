##!/bin/bash
#
#
#
#terraform init -backend-config=backend.tf
#
#terraform apply -auto-approve

 #!/bin/bash

aws ec2 terminate-instances  \
  --instance-ids i-0342d07d1f361a248  \
--user-data file://creat.sh
