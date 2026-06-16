Task 1: Your First Dockerfile
Create a folder called my-first-image
Inside it, create a Dockerfile that:
Uses ubuntu as the base image
Installs curl
Sets a default command to print "Hello from my custom image!"
Build the image and tag it my-ubuntu:v1
Run a container from your image
Verify: The message prints on docker run


mkdir my-first-image
cd my-first-image

cat <<EOF > Dockerfile
FROM ubuntu

RUN apt update; apt install curl

CMD [ "echo", "Hello from my custom image!" ]
EOF

docker build -t my-ubuntu:v1 .

docker run --rm my-ubuntu:v1


