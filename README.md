# docker-traefik
Secure implementation of [Traefik](https://github.com/traefik/traefik)

![img.png](img.png)
:heart: tested with [Qualys SSL Labs](https://www.ssllabs.com/ssltest/)

## Overview
This docker implementation of Traefik was inspired by Dale Picou's [Traefik image](https://hub.docker.com/r/djpic/traefik). 
There are two key differences between his image and mine:
* Utilizes the latest version of Traefik.
* Implements a secure HTTP middleware that allows all HTTP methods

Docker Hub :package: https://hub.docker.com/r/brettfitz/traefik

## How to use :pencil:

### Docker Compose :memo:
When defining your Traefik service, specify the image and add the provider:
```yaml
traefik:
    image: brettfitz/traefik:latest
    ...
    command:
      - --providers.file.filename=/configs/traefik_dynamic_config.yml
```

### Middlewares :twisted_rightwards_arrows:
To add a middleware, apply the deploy label to your container. :warning: You must include the 
`@file` with the middleware name, which tells Traefik to use the file provider to find it. 

Available middlewares:
* https-redirect
* secure-headers
* secure-headers-all-methods
* secure-headers-no-csp
* compress-content

#### HTTPs redirect only :arrow_right_hook:
```yaml
- "traefik.http.routers.myrouter.middlewares=https-redirect@file"
```

#### HTTPs redirect + secure-headers :lock:
```yaml
- "traefik.http.routers.myrouter.middlewares=https-redirect@file, secure-headers@file"
```

## Help / Troubleshooting :construction_worker:
Contact me on Twitter [@_brettfitz](https://twitter.com/_brettfitz) or submit a GitHub issue!
