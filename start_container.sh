#!/bin/bash
set -e

# Pull the Docker image from ecr
sudo aws ecr get-login-password --region ap-south-1 | docker login --username AWS --password-stdin 531574450554.dkr.ecr.ap-south-1.amazonaws.com

docker pull 531574450554.dkr.ecr.ap-south-1.amazonaws.com/nodeimage:latest

# Run the Docker image as a container
docker run -d -p 531574450554.dkr.ecr.ap-south-1.amazonaws.com/nodeimage:latest
