Task 1: The Problem
Run a Postgres or MySQL container
Create some data inside it (a table, a few rows — anything)
Stop and remove the container
Run a new one — is your data still there?


docker run --name my-postgres -p 5432:5432 -e POSTGRES_PASSWORD=mysecretpassword -d postgres
docker exec  -it my-postgres bash

psql -U postgres
CREATE DATABASE company_db;
\c company_db;
CREATE TABLE employees  (id SERIAL PRIMARY KEY,first_name VARCHAR(50) NOT NULL,last_name VARCHAR(50) NOT NULL,email VARCHAR(100) UNIQUE,hire_date DATE DEFAULT CURRENT_DATE, salary NUMERIC(10, 2));
\dt
\d employees

docker stop  my-postgres
docker rm  my-postgres

docker run --name my-postgres -p 5432:5432 -e POSTGRES_PASSWORD=mysecretpassword -d postgres








Task 2: Named Volumes
Create a named volume
Run the same database container, but this time attach the volume to it
Add some data, stop and remove the container
Run a brand new container with the same volume
Is the data still there?
Verify: docker volume ls, docker volume inspect


docker volume create postgres_data
docker volume ls

docker run --name my-postgres -p 5432:5432 -e POSTGRES_PASSWORD=mysecretpassword -d -v postgres_data:/var/lib/postgresql/ postgres
docker exec  -it my-postgres bash

psql -U postgres
CREATE DATABASE company_db;
\c company_db;
CREATE TABLE employees  (id SERIAL PRIMARY KEY,first_name VARCHAR(50) NOT NULL,last_name VARCHAR(50) NOT NULL,email VARCHAR(100) UNIQUE,hire_date DATE DEFAULT CURRENT_DATE, salary NUMERIC(10, 2));
\dt
\d employees

docker stop  my-postgres
docker rm  my-postgres


docker run --name my-postgres -p 5432:5432 -e POSTGRES_PASSWORD=mysecretpassword -d -v postgres_data:/var/lib/postgresql/ postgres
docker exec  -it my-postgres bash

psql -U postgres
CREATE DATABASE company_db;
\c company_db;
\dt
\d employees








Task 3: Bind Mounts
Create a folder on your host machine with an index.html file
Run an Nginx container and bind mount your folder to the Nginx web directory
Access the page in your browser
Edit the index.html on your host — refresh the browser
Write in your notes: What is the difference between a named volume and a bind mount?

mkdir my-website
echo "This is my first website" > my-website/index.html

docker run -d --name my-website -p 80:80 -v ./my-website:/usr/share/nginx/html nginx
http://localhost
echo "This is my seconde website" >> my-website/index.html
http://localhost
docker rm -f my-website





Task 4: Docker Networking Basics
List all Docker networks on your machine
Inspect the default bridge network
Run two containers on the default bridge — can they ping each other by name?
Run two containers on the default bridge — can they ping each other by IP?


docker network ls
docker inspect bridge
docker run -d --rm --name serv1 --network bridge busybox sleep 120
docker run -d --rm --name serv2 --network bridge busybox sleep 120

docker exec -it serv1 sh
ping serv2
ip a
ping 172.17.0.3


docker exec -it serv2
ping serv1
ip a
ping 172.17.0.2

docker rm -f serv1
docker rm -f serv2











Task 5: Custom Networks
Create a custom bridge network called my-app-net
Run two containers on my-app-net
Can they ping each other by name now?
Write in your notes: Why does custom networking allow name-based communication but the default bridge doesn't?

docker network ls
docker network create my-app-net
docker run -d --rm --name serv1 --network my-app-net busybox sleep 120
docker run -d --rm --name serv2 --network my-app-net busybox sleep 120

docker exec -it serv1 sh
ping serv2
ip a
ping 172.19.0.3


docker exec -it serv2 sh
ping serv1
ip a
ping 172.19.0.2

docker rm -f serv1
docker rm -f serv2








Task 6: Put It Together
Create a custom network
Run a database container (MySQL/Postgres) on that network with a volume for data
Run an app container (use any image) on the same network
Verify the app container can reach the database by container name


docker network ls
docker network create my-app-net

docker volume ls
docker volume create postgres_data

docker run --name my-postgres -p 5432:5432 -e POSTGRES_PASSWORD=mysecretpassword -d --network my-app-net -v postgres_data:/var/lib/postgresql/ postgres
docker run -d --rm --name my-app --network my-app-net busybox sleep 120

