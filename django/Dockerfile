FROM python:3
LABEL maintainer="negrutaoleg@gmail.com"
#RUN apt-get update && \
#apt-get upgrade -y && \
#apt-get install -y git 
#RUN apt-get install python3-dev gcc build-essential -y
RUN mkdir /app
WORKDIR /app
EXPOSE 8000
RUN git clone https://github.com/Olejekglejek/eng84-airport-project.git
WORKDIR /app/eng84-airport-project
RUN python3 -m pip install --user virtualenv

RUN python3 -m venv venv
RUN . venv/bin/activate
RUN pip install -r requirements.txt
WORKDIR /app/eng84-airport-project/app
RUN python manage.py makemigrations
RUN python manage.py migrate



CMD ["python", "/app/eng84-airport-project/app/manage.py", "runserver", "0.0.0.0:8000"]