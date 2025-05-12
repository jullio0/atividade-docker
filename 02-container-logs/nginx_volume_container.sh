#!/bin/bash

# 1. Criar volume Docker para logs
docker volume create nginx_julio

# 2. Rodar container nginx com volume montado e porta 8080 exposta
docker run -d --name nginx_logs \
  -p 8080:80 \
  -v nginx_julio:/var/log/nginx \
  nginx:alpine

# 3. Gerar logs acessando a página via curl
curl http://localhost:8080

# 4. Parar e remover o container
docker stop nginx_logs
docker rm nginx_logs

# 5. Subir novo container e verificar persistência dos logs
docker run -d --name nginx_logs2 \
  -p 8080:80 \
  -v nginx_julio:/var/log/nginx \
  nginx:alpine

# 6. Verificar logs persistidos
docker exec nginx_logs2 cat /var/log/nginx/access.log

