Challenge Tasks
Task 1: Install & Verify
Check if Docker Compose is available on your machine
Verify the version
```bash
apt-get install docker-compose-plugin
docker compose version
docker version
```
---



Task 2: Your First Compose File
Create a folder compose-basics
Write a docker-compose.yml that runs a single Nginx container with port mapping
Start it with docker compose up
Access it in your browser
Stop it with docker compose down
```bash
mkdir compose-basics
vim compose-basics/docker-compose.yml
services:
  web_server:
    image: nginx:latest
    container_name: "webserver"
    ports:
      - 80:80

docker compose up -d
http://localhost
docker compose down

```
---



Task 3: Two-Container Setup
Write a docker-compose.yml that runs:

A WordPress container
A MySQL container
They should:

Be on the same network (Compose does this automatically)
MySQL should have a named volume for data persistence
WordPress should connect to MySQL using the service name
Start it, access WordPress in your browser, and set it up.

Verify: Stop and restart with docker compose down and docker compose up — is your WordPress data still there?
```bash
services:
  wp:
    image: wordpress:latest
    networks:
    - wp_net
    container_name: wp_server
    ports:
    - 80:80
    environment:
      WORDPRESS_DB_HOST: db_server
      WORDPRESS_DB_USER: app_user
      WORDPRESS_DB_PASSWORD: app_secure_pass
      WORDPRESS_DB_NAME: app_db

  db:
    image: mariadb
    container_name: db_server
    volumes:
    - db_data:/var/lib/mysql
    networks:
    - wp_net
    environment:
      MARIADB_ROOT_PASSWORD: my_secure_root_pass
      MARIADB_DATABASE: app_db
      MARIADB_USER: app_user
      MARIADB_PASSWORD: app_secure_pass


volumes:
  db_data:  { name: db_data }

networks:
  wp_net:
    name: wp_net
    driver: bridge



docker compose up -d
http://localhost

docker compose down

docker compose up -d
http://localhost

docker compose up -d --volumes


```
---



Task 4: Compose Commands
Practice and document these:

Start services in detached mode
View running services
View logs of all services
View logs of a specific service
Stop services without removing
Remove everything (containers, networks)
Rebuild images if you make a change
```bash
docker compose up
docker compose ls
docker compose ps
docker compose logs
docker compose logs -f
docker compose stop
docker compose down --volumes
docker compose up -d
```
---



Task 5: Environment Variables
Add environment variables directly in your docker-compose.yml
Create a .env file and reference variables from it in your compose file
Verify the variables are being picked up
```bash
services:
  wp:
    image: wordpress:latest
    networks:
    - wp_net
    container_name: wp_server
    ports:
    - 80:80
    environment:
      WORDPRESS_DB_HOST: db_server
      WORDPRESS_DB_USER: ${DB_USER}
      WORDPRESS_DB_PASSWORD: ${DB_PASSWORD}
      WORDPRESS_DB_NAME: ${DB_NAME}

  db:
    image: mariadb
    container_name: db_server
    volumes:
    - db_data:/var/lib/mysql
    networks:
    - wp_net
    environment:
      MARIADB_ROOT_PASSWORD: ${DB_ROOT_PASSWORD}
      MARIADB_DATABASE: ${DB_NAME}
      MARIADB_USER: ${DB_USER}
      MARIADB_PASSWORD: ${DB_PASSWORD}

volumes:
  db_data:  { name: db_data }

networks:
  wp_net:
    name: wp_net
    driver: bridge




#.env
DB_ROOT_PASSWORD: my_secure_root_pass
DB_NAME: app_db
DB_USER: app_user
DB_PASSWORD: app_secure_pass



docker compose up -d
```
---








