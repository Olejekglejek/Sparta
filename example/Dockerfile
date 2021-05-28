FROM ubuntu:16.04
# First line of our Dockerfile

RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install python-software-properties -y
RUN apt-get install curl -y
RUN curl -sL https://deb.nodesource.com/setup_6.x | bash -
RUN apt-get install nodejs -y

WORKDIR /home/ubuntu/app
# Here we are telling docker to use this location as our working directory inside the container

# Now we need to copy our packages
COPY package*.json ./ 
# wild card to copy all files with extension of .json to minimise steps

# Now we need to install dependencies for node
RUN npm install
# This will install all packages at build time

# Now we need get our app data insdie the container
COPY . . 
# Here we are copying all app data to WORKDIR location

EXPOSE 3000
# Now you know why did we need to understand nodejs app structure

CMD ["node", "app.js"]```
# This is the command that was defined in the app to start the app
# ###
# FROM node:alpine
# # for small size image

# WORKDIR /usr/src/app

# COPY package*.json ./

# RUN npm install

# COPY . .

# EXPOSE 3000

# CMD ["node", "app.js"]
# ###
