#!/bin/bash

cd /home/ubuntu/DevOps_Introduction/app

sudo echo "export DB_HOST=mongodb://10.0.2.122:27017/posts" >> ~/.bashrc 

source ~/.bashrc
npm install
nodejs seeds/seed.js
pm2 kill
pm2 start app.js