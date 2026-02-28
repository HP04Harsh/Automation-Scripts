#!/bin/bash
# Run using Bash

echo "Cleaning unused Docker containers..."
docker container prune -f
# Remove stopped containers

echo "Cleaning unused Docker images..."
docker image prune -f
# Remove unused images

echo "Docker cleanup completed."