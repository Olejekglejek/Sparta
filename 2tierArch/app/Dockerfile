# Dockerfile for Nodejs app
FROM node:6
# setting up the working dir inside the container
WORKDIR /usr/src/app

# Copy everything or dependencies required
COPY . .

#run npm install after we have copied the dependencies
RUN npm install



# Expose the port for our app
EXPOSE 3000
# populate database
CMD ["node", "seeds/seed.js"]
# launch the app
CMD ["node", "app.js"]
