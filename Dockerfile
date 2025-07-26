# DockerFile

# Base image
FROM traefik:v3.5.0

# Dynamic config file
COPY ./traefik_dynamic_config.yml /configs/traefik_dynamic_config.yml
