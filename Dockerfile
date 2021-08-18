# DockerFile

# Base image
FROM traefik:latest

# Dynamic config file
COPY ./traefik_dynamic_config.yml /configs/traefik_dynamic_config.yml
