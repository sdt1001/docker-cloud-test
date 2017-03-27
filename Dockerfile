FROM ubuntu:xenial
RUN apt-get update
RUN apt-get install python3.6
COPY . /src
WORKDIR /src
