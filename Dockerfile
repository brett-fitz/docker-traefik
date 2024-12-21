# DockerFile

# Base image
FROM traefik:v3.2.3

# Dynamic config file
COPY ./traefik_dynamic_config.yml /configs/traefik_dynamic_config.yml
