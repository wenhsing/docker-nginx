# Nginx

## Build

```sh
docker build -t [image name]:[tag name] .
```

## Run

```sh
docker run -d --rm --name [container name] \
    -v nginx_conf_path:/etc/nginx/conf.d -v ca_path:/ca -v app_path:/app \
    -p 80:80 -p 443:443 \
    [image name]:[tag name]
```

## Restart

```sh
docker container restart [container name]
```
