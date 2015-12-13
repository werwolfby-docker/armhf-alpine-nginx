#!/usr/bin/env bash

docker run -d \
  --name nginx \
  --restart=always \
  --net=host \
  -p 80:80 \
  -p 443:443 \
  -v /var/docker/nginx:/etc/nginx \
  werwolfby/armv7l-alpine-nginx
