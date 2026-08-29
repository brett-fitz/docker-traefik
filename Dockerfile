# DockerFile

# Base image
FROM traefik:v3.7.12

# Dynamic config file
COPY ./traefik_dynamic_config.yml /configs/traefik_dynamic_config.yml
