# DockerFile

# Base image
FROM traefik:v2.11.15

# Dynamic config file
COPY ./traefik_dynamic_config.yml /configs/traefik_dynamic_config.yml
