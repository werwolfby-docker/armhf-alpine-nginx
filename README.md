# armhf-alpine-nginx

ARM hf compatible Docker Image with a minimal `tranmsission` daemon.

## Details
- [Source Project Page](https://github.com/werwolfby/docker-armhf-alpine-nginx)
- [Source Repository](https://github.com/werwolfby/docker-armhf-alpine-nginx)
- [Dockerfile](https://github.com/werwolfby/docker-armhf-alpine-nginx/blob/master/Dockerfile)

## Start a nginx server
```bash
docker run -d --name my-nginx \
  -p 9091:9091 \
  -p 51413:51413/tcp \
  -p 51413:51413/udp \
  -v /path/to/complete/folder:/root/Downloads \
  -v /path/to/store/nginx/settings/and/intermediate/results:/etc/nginx \
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
Specify path for downloading torrents and path for storing intermediate settings and results.
```
TORRENTS=/path/to/complete/folder
SETTINGS=/path/to/store/nginx/settings/and/intermediate/results
```

```bash
make run
```

Stop just created nginx daemon by:
```bash
make stop
```

Edit file in `/path/to/store/nginx/settings/and/intermediate/results/settings.json` and specify your settings.
At least you have to specify *rpc_user* and *rpc_password*. All other settings can be left default.

Start server:
```bash
make start
```
