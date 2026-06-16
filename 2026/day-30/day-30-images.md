Task 1: Docker Images
Pull the nginx, ubuntu, and alpine images from Docker Hub
List all images on your machine — note the sizes
Compare ubuntu vs alpine — why is one much smaller?
Inspect an image — what information can you see?
Remove an image you no longer need


docker pull nginx
docker pull ubuntu
docker pull alpine
docker images   # OR
docker image ls
docker rmi ubuntu
docker rmi alpine





ask 2: Image Layers
Run docker image history nginx — what do you see?
Each line is a layer. Note how some layers show sizes and some show 0B
Write in your notes: What are layers and why does Docker use them?
docker image history nginx



Task 3: Container Lifecycle
Practice the full lifecycle on one container:
Create a container (without starting it)
Start the container
Pause it and check status
Unpause it
Stop it
Restart it
Kill it
Remove it
Check docker ps -a after each step — observe the state changes.

docker run -d -name web_server nginx
docker start nginx
docker pause nginx
docker unpause nginx
docker stop nginx
docker restart nginx
docker kill nginx
docker rm -f nginx






Task 4: Working with Running Containers
Run an Nginx container in detached mode
View its logs
View real-time logs (follow mode)
Exec into the container and look around the filesystem
Run a single command inside the container without entering it
Inspect the container — find its IP address, port mappings, and mounts

docker run -d --name web_server nginx
docker logs web_server
docker logs -f web_server
docker exec -it web_server bash
	df -Th
	exit
docker exec -it web_server df -Th
docker inspect web_server




Task 5: Cleanup
Stop all running containers in one command
Remove all stopped containers in one command
Remove unused images
Check how much disk space Docker is using



docker stop `docker ps -q`
docker rm -f  `docker ps -aq`
docker image prune
docker system df



