#!/bin/bash

curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.32.0/install.sh | bash

. ~/.nvm/nvm.sh

nvm install 15.0.0
echo "Confirm Successful Installation"

node -e "console.log('Running Node.js ' + process.version)"

echo "Welcome to Amantya Technologies!" > index.html

npm install -g http-server --prefix ~/npm
http-server -p 8055 &
