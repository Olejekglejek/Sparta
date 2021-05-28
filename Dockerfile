# we need to use nignx official image as our base image
# we will use a keyword called FROM

FROM nginx
# here we are using official image as our base image

LABEL maintainer="negrutaoleg@gmail.com"
# using label is good practice but optional

COPY ./app1 /usr/share/nginx/html
# copying our app1 folder from our OS to default index.html location

EXPOSE 80
# EXPOSE is the keyword to use to expose the required port for the base image

CMD ["nginx", "-g", "daemon off;"]
# CMD will execute the command in this case as this information is taken form its the official image