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






Task 2: Dockerfile Instructions
Create a new Dockerfile that uses all of these instructions:

FROM — base image
RUN — execute commands during build
COPY — copy files from host to image
WORKDIR — set working directory
EXPOSE — document the port
CMD — default command
Build and run it. Understand what each line does.


mkdir my-second-image
cd my-second-image

cat <<EOF > Dockerfile
FROM ubuntu

RUN apt update; apt install update

COPY . .

WORKDIR /root

EXPOSE 80

CMD [ "echo", "Hello from my custom image!" ]
EOF

docker build -t my-ubuntu:v2 .

docker run --rm my-ubuntu:v2






Task 3: CMD vs ENTRYPOINT
Create an image with CMD ["echo", "hello"] — run it, then run it with a custom command. What happens?
Create an image with ENTRYPOINT ["echo"] — run it, then run it with additional arguments. What happens?
Write in your notes: When would you use CMD vs ENTRYPOINT?


FROM ubuntu

WORKDIR /root

EXPOSE 80

CMD ["echo", "hello"]

ENTRYPOINT ["echo", "hello"]



docker build -t my-ubuntu:v3 .

docker run --rm my-ubuntu:v3










Task 4: Build a Simple Web App Image
Create a small static HTML file (index.html) with any content
Write a Dockerfile that:
Uses nginx:alpine as base
Copies your index.html to the Nginx web directory
Build and tag it my-website:v1
Run it with port mapping and access it in your browser

mkdir my-third-image
cd my-third-image

echo my website > index.html

FROM nginx:alpine

COPY index.html /usr/share/nginx/html/index.html


docker build -t my-website:v1 .
docker run --rm -d -p 80:80 --name my-website my-website:v1