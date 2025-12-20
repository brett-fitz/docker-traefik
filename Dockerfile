# DockerFile

# Base image
FROM traefik:v3.6.5

# Dynamic config file
COPY ./traefik_dynamic_config.yml /configs/traefik_dynamic_config.yml
