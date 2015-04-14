#!/bin/bash

IMAGE=registry.deliverous.net/kladier/jekyll_install

docker build -t $IMAGE .
docker push $IMAGE
curl -X POST http://api.deliverous.com:80/trigger/4c1217a9-b66a-43a7-9aa0-ab10f472d35e