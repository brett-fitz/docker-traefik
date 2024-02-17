# DockerFile

# Base image
FROM traefik:2.11.0

# Dynamic config file
COPY ./traefik_dynamic_config.yml /configs/traefik_dynamic_config.yml
