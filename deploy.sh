#!/usr/bin/env bash
sudo apt update && sudo apt install nodejs npm
#install pm2 production manager
sudo npm install -g pm2
#stop current running process
pm2 stop assignment-app
#navigate to app directory
cd AssignmentApplication/
# install dependencies
npm install
# start process 
pm2 start ./bin/ww --name assignment-app
