#!/bin/bash

echo "Baixando a imagem do Nginx..."
docker pull nginx

echo "Iniciando o contêiner 'meu-servidor'..."
docker run -d --name meu-servidor nginx

echo "Contêineres em execução:"
docker ps

echo "Parando o contêiner 'meu-servidor'..."
docker stop meu-servidor

echo "Removendo o contêiner 'meu-servidor'..."
docker rm meu-servidor

echo "Todos os contêineres (inclusive os parados):"
docker ps -a

