FROM ubuntu:latest
FROM python:latest

RUN apt-get update -y && \
    apt-get install -y python3-pip python-dev

WORKDIR /app
COPY ./requirements.txt /app/requirements.txt

RUN pip3 install -r requirements.txt
COPY . /app

EXPOSE 5000

CMD ["python3","./app.py","--host","0.0.0.0"]