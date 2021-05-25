# Using Python official image
FROM python:3.7-slim

# Optional, but a good practice
# LABEL MAINTAINER = kingbigw

# Copying the project from our OS to the specified location (in container) 
COPY ./app/requirements.txt /

# Run the requirements
WORKDIR /
RUN python -m pip install -r requirements.txt

COPY ./app /app/

WORKDIR /app

EXPOSE 5000

# Run the application
CMD ["gunicorn", "--bind", "0.0.0.0:5000", "wsgi:app"]
