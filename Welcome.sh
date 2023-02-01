#!/bin/bash

echo "Welcome to Amantya Technologies!" > index.html

npm install -g http-server --prefix ~/npm
http-server -p 8055 &


