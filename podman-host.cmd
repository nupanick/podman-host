podman run --rm --privileged ^
  --name innerhost ^
  -p 127.0.0.1:8000:80 ^
  -p 127.0.0.1:8001:8002 ^
  --net=slirp4netns ^
  quay.io/podman/stable:v4.5.1 ^
  podman run -p 8002:80 --name nginx docker.io/library/nginx
