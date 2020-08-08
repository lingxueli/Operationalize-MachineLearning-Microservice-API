#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=api

# Step 2:  
# Authenticate & tag
echo "Please log in to Docker Hub"

docker login
docker tag $dockerpath lingxueli/api:latest

echo "Docker ID and Image: $dockerpath"

# Step 3:
# Push image to a docker repository
docker push lingxueli/api
