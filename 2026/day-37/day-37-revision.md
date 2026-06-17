docker run --name nginx nginx
docker run -d --name nginx nginx
docker  ps
docker ps -a
docker stop nginx
docker rm nginx
docker tag nginx dockerhubusername/nginx:latest
docker volume db_data
docker run -v /mnt/:/mnt/ --name nginx -d nginx
docker network create mynet
docker network ls
docker run --network mynet --name nginx -d nginx
docker compose up -d
docker compose down
docker compose stop
docker compose ps
docker compose ls
docker compose logs
docker system df
docker system info
docker exec -it nginx bash
docker build -f Dockerfile -t nginx:v1.0 .
docker volume inspect db_data
docker inspect nginx
docker container inspect nginx
