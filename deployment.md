Task 1) You each should have received an email containing a private ssh key. I have setup a group of t2.micro instances for your use.


Task 2) Each of you has your own dedicated instance. It is a linux server running Ubuntu Xenial.
• Login via the command line.
From a command line prompt:
ssh -i file path of key file location keyfile name servername@ipaddress 
SO…
ssh -i c:\Users\Steve\Desktop\Docker\sthibault-1491234744.key sthibault@54.183.60.46


Task 3) Configure the server.

•	Setup the server to be able to run Docker.
sudo apt install docker.io

sudo apt-get update
if the daemon doesn’t work….
sudo usermod -aG docker $(whoami)
logout
log in

•	You should be able to run the following command on your server to verify that it's functioning correctly.
# Check that the docker service is running

ps aux | grep docker

# Check that you can run a simple container

docker run ubuntu:xenial echo "hello world"

•	Git clone a copy of your docker-cloud-test repo onto the server.

git clone your docker-cloud-test repository within the server you are ssh’d into.
SO….
git clone https://github.com/sdt1001/docker-cloud-test.git

•	You should be able to run the following commands.
# This will build a local image of your docker cloud Flask server
docker build -t test /path/to/Dockerfile

cd docker-cloud-test
docker build -t test .

# Verify that git works

cd into the docker-cloud-test directory which as cloned from github.com, then perform git commands like git log…

git log --oneline --decorate


Task 4) Pull the latest copy of your public docker-cloud-test image.
docker pull sdt1001/docker-cloud-test

•	Verify that you have the correct image.
docker images

IMAGE ID of 1ba42c8276b3 shown in CLI matches Successfully built hash on docker.com “Build in ‘master’(0a52d36e)”. 


Task 5) Start a container using your public docker-cloud-test image.
•	Figure out how to start a docker container and keep it running in the background.
docker run -td --expose=8000-8080/tcp --name=sdt1002 sdt1001/docker-cloud-test

--expose=8000-8080/tcp exposes the port from the container as required in the next bullet (1)
--name=sdt1002 is optional
-t allocates a pseudo-TTY and keeps it running

(http://stackoverflow.com/questions/25775266/how-to-keep-docker-container-running-after-starting-services/36872226#36872226)

-d option runs the container in the background & prints container ID

returns “9f54f0be98f9e36b72d4cfae5fc78f6f7123b227a6d40a5a70e5330036412f2d”

# Check for running instances with 
docker ps

returns CONTAINER ID, IMAGE, COMMAND, CREATED, STATUS, PORTS, NAMES

•	Figure out how to expose the port from the container.
(1)	See above

# Exposed ports are visible with 
docker ps
# You should see something like 0.0.0.0:####->####/tcp

Not really…


Task 6) Test your web server.
•	Figure out the URL you need to load from your laptop to see your running Flask server!!!
