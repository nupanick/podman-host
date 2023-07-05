# podman-host

Host files for klay.gay

## Requirements

- podman v3.0.1
- podman-compose v0.1.11

## Building

- copy sample.env to .env
- environment variables:
  - NGINX_HTTP_PORT: port to expose to outside world; use 80 for production.
  - FRESHRSS_ADMIN_PASSWORD: admin password for freshrss. only needed for first run.
- `podman-compose up -d`
