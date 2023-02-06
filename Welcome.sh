#!/bin/bash

sudo yum install -y gcc-c++ make 
curl -sL https://rpm.nodesource.com/setup_19.x | sudo -E bash - 
sudo yum install -y nodejs 

echo "Confirm Successful Installation"

echo "Welcome to Amantya Technologies!" > index.html

npm install -g http-server -f --prefix ~/npm
http-server -p 8055 &
