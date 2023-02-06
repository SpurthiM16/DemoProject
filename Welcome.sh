#!/bin/bash

sudo yum install python3 -y

echo "Welcome to Amantya Technologies!" > index.html

python3 -m http.server 8043
