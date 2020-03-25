#!/bin/bash

sudo yum update -y
sudo yum install httpd -y
sudo service httpd start
sudo chkconfig httpd on
echo "<h1>Deployed via AWS Cloud Automation</h1>" | sudo tee /var/www/html/index.html