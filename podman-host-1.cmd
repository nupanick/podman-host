if not exist .containers mkdir .containers
podman machine set --rootful
podman run -dit ^
  --name host2 ^
  --rm ^
  -v .containers:/home/podman/.local/share/containers:rw ^
  --privileged ^
  -p 8000:80 ^
  -p 8001:8001 ^
  quay.io/podman/stable

podman exec host2 podman pod create -p 8001:80 innerpod

podman exec host2 podman run --pod innerpod docker.io/library/nginx
