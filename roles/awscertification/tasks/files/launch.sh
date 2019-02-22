#!/bin/bash
yum update –y
yum install -y php
yum install -y php-mysql
yum install -y mysql
yum install -y httpd
echo "<html><body><h1>powered by AWS</h1></body></html>" >  /var/www/html/index.html
service httpd start
