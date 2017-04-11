FROM ubuntu:xenial
COPY . /src
WORKDIR /src
RUN apt-get update -y
RUN apt-get install -y python3
RUN apt-get install -y python3-pip python3-dev build-essential
RUN pip3 install flask
EXPOSE 8080

RUN python3 unh698_test.py