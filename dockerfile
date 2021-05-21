FROM python:3

WORKDIR /usr/src/app


RUN apt-get update -y

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY  ./ /usr/src/app


CMD [ "pytest" ]