#!/bin/bash

# run the update command
sudo apt-get update -y

# upgrade commnad
sudo apt-get upgrade -y

# install nginx
sudo apt-get install nginx -y

# install nodejs v6.0 with dependencies
sudo apt-get install python-software-properties

curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install nodejs -y

# install npm
sudo apt-get install npm

# install npm with pm2
sudo npm install -g pm2

# Install app packages
sudo npm install app/app

# Reverse proxy
sudo echo "server {
    listen 80;

    server_name _;

    location / {
        proxy_pass http://localhost:3000;
        proxy_http_version 1.1;
        proxy_set_header Upgrade \$http_upgrade;
        proxy_set_header Connection 'upgrade';
        proxy_set_header Host \$host;
        proxy_cache_bypass \$http_upgrade;
    }
}" | sudo tee /etc/nginx/sites-available/default


sudo systemctl restart nginx




