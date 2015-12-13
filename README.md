# armhf-alpine-nginx

ARM hf compatible Docker Image with a minimal `nginx` HTTP and reverse proxy server (https://nginx.org/).

## Details
- [Source Project Page](https://github.com/werwolfby/docker-armhf-alpine-nginx)
- [Source Repository](https://github.com/werwolfby/docker-armhf-alpine-nginx)
- [Dockerfile](https://github.com/werwolfby/docker-armhf-alpine-nginx/blob/master/Dockerfile)

## Start a nginx server
```bash
docker run -d --name my-nginx \
  -p 80:80 \
  -p 443:443 \
  -v /path/to/store/nginx/settings/:/etc/nginx \
  werwolfby/armhf-alpine-nginx
```

## How to create this image

Run all commands from within the project root directory.

### Create image
Create folder. Folder name will be used for image name by default. 
Checkout this repository. And run.
```bash
git clone https://github.com/werwolfby/docker-armhf-alpine-nginx .
make build
```


### Run container from image
Copy `env.template` to `env`. Edit the file settings to your particular settings.
Specify path for storing nginx settings.
```
SETTINGS=/path/to/store/nginx/settings/
```

```bash
make run
```
