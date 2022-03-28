#!/bin/bash 

source components/common.sh

COMPONENT=catalogue
yum install nodejs make gcc-c++ -y
useradd log
su log


 curl -s -L -o /tmp/catalogue.zip "https://github.com/roboshop-devops-project/catalogue/archive/main.zip"
 cd /home/log
 unzip /tmp/catalogue.zip
 mv catalogue-main catalogue
 cd /home/log/catalogue
 npm install

  mv /home/log/catalogue/systemd.service /etc/systemd/system/catalogue.service
  systemctl daemon-reload
  systemctl start catalogue
  systemctl enable catalogue

