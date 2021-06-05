#!/bin/bash

curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh
cd hello-world
docker build -t helloworld .
docker run -d -p 80:8080 helloworld 

