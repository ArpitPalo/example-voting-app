#!/bin/bash

sudo docker run -d --name=redis redis
sudo docker run -d --name=db -e POSTGRES_HOST_AUTH_METHOD=trust postgres:9.4
sudo docker run -d --name=vote -p 5000:80 --link redis:redis prabhavagrawal/vote-app
sudo docker run -d --name=result -p 5001:80 --link redis:redis --link db:db prabhavagrawal/result-app
sudo docker run -d --name=worker --link redis:redis --link db:db prabhavagrawal/worker-app
