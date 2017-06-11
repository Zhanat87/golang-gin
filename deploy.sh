#!/usr/bin/env bash

go build
git add . && git commit -m 'deploy' && git push origin master
# stop & remove all docker containers
docker stop $(docker ps -a -q)
# remove image
docker rmi $(docker images --filter=reference='zhanat87/golang-gin') -f
# create new docker image, push to docker hub and pull
docker build -t zhanat87/golang-gin .
docker push zhanat87/golang-gin
# list of all docker images on host machine
docker images

echo "deploy success"
