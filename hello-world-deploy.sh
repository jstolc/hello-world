#!/bin/bash
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh
systemctl enable docker
systemctl start docker
docker build -t helloworld .
docker run -d -p 80:8080 helloworld 

