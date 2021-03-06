#!/bin/bash
echo nginx installing mahendra
 yum install nginx -y


 systemctl enable nginx

 systemctl start nginx

 curl -s -L -o /tmp/Dockerfile.zip "https://github.com/roboshop-devops-project/frontend/archive/main.zip"


 cd /usr/share/nginx/html
 rm -rf *
 unzip /tmp/Dockerfile.zip
 mv Dockerfile-main/* .
 mv static/* .
 rm -rf Dockerfile-master static README.md
 mv localhost.conf /etc/nginx/default.d/log.conf


 systemctl restart nginx