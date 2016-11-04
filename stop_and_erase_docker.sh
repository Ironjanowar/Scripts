#!/bin/bash

# Stop images
docker stop $(docker ps | awk '{print $1}' | sed 1d)

# Remove containers
docker rm $(docker ps -a -q)

# Remove images
docker rmi $(docker images -q)

# Check
echo "Checking docker ps:"
docker ps

echo "Checking docker images:"
docker images
