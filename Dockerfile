# DockerFile

# Base image
FROM traefik:v2.10.1

# Dynamic config file
COPY ./traefik_dynamic_config.yml /configs/traefik_dynamic_config.yml
