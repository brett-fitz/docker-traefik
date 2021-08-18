#!/bin/zsh
# Docker deploy script

# Cleanup
docker rmi brettfitz/traefik:latest

# Build docker image and tag
docker build -t brettfitz/traefik .

# Push to Docker Hub repo
docker push brettfitz/traefik:latest
