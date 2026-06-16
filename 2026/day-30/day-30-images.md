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



