# DockerFile

# Base image
FROM traefik:v2.11.20

# Dynamic config file
COPY ./traefik_dynamic_config.yml /configs/traefik_dynamic_config.yml
