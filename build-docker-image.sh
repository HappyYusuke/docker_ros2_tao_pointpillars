#!/bin/bash
DOCKER_IMAGE_NAME=kanazawa/reid3d_ready:latest

./stop-docker-container.sh
docker build ./docker -t $DOCKER_IMAGE_NAME #--no-cache=true
