#!/bin/bash
DOCKER_IMAGE_NAME=nazawa28/ros2_tao_pointpillars:latest

./stop-docker-container.sh
docker build ./docker -t $DOCKER_IMAGE_NAME #--no-cache=true
