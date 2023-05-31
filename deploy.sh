#!/bin/zsh
# Docker deploy script

# Cleanup
docker rmi brettfitz/traefik:latest

# Build docker image and tag
docker buildx build --push --platform linux/amd64 -t brettfitz/traefik -t brettfitz/traefik:v2.10.1 .

# Push to Docker Hub repo as latest tag
docker push brettfitz/traefik:latest
