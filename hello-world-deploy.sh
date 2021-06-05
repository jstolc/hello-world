#!/bin/bash

# download and install docker
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh
# start the service
systemctl enable docker
systemctl start docker
# build container
docker build -t helloworld .
# run the web server along with the servlet 
docker run -d -p 80:8080 helloworld 
sleep 20  # this cannot hurt that much :)

# test the result
S1=$(curl -fsSL http://localhost/hello)
S2='Hello, World!'
if [ "$S1" == "$S2" ]
then
  # display success message
  IP=$(ping -c 1 `hostname` | sed -nE 's/^PING[^(]+\(([^)]+)\).*/\1/p')
  printf "\nTo access hello-world web app, navigate to http://${IP}/hello\n"   
else 
  # bad luck
  echo Something went wrong.
fi


