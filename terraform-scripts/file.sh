#!/bin/bash
 sudo yum update -y
 sudo yum install -y httpd.x86_64
 systemctl start httpd.service
 systemctl enable httpd.service
 echo "hello world" from $(hostname -f)" > /var/www/html/index.html

