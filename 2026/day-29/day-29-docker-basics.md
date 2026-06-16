Task 2: Install Docker
Install Docker on your machine (or use a cloud instance)
Verify the installation
Run the hello-world container
Read the output carefully — it explains what just happened


apt install docker.io
docker --version
docker pull hello-world
docker images 
docker run --rm hello-world






Task 3: Run Real Containers
Run an Nginx container and access it in your browser
Run an Ubuntu container in interactive mode — explore it like a mini Linux machine
List all running containers
List all containers (including stopped ones)
Stop and remove a container

docker run -d --name web_server nginx
docker run -it --rm ubuntu bash
docker ps
docker ps -a
docker stop web_server
docker rm web_server






Task 4: Explore
Run a container in detached mode — what's different?
Give a container a custom name
Map a port from the container to your host
Check logs of a running container
Run a command inside a running container



docker run -d nginx
docker run -d --name web_server nginx
docker run -d -p 80:80 --name web_server nginx
docker log nginx
docker exec -it web_server bash


