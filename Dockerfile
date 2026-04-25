# DockerFile

# Base image
FROM traefik:v3.6.14

# Dynamic config file
COPY ./traefik_dynamic_config.yml /configs/traefik_dynamic_config.yml
