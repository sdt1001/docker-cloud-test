FROM ubuntu:xenial
COPY . /src
WORKDIR /src
RUN apt-get -y install python3
RUN apt-get -y install python3-pip
RUN pip3 install flask