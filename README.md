# README

This project is for running exment on docker.
https://github.com/exceedone/exment

## Tested Platforms
* Ubuntu 20.04.4 LTS(ARM64)

## Install
Checkout this git repo.

`$ git clone https://github.com/mssibain/exment-docker.git`

Build ruby image.

`$ bash install.sh`

## Optional: Change settings

If use https, unccoment and edit <<your.domain>> docker-compose.yml.
and remove ports section in nginx service.

```
  # https-portal:
  #   image: steveltn/https-portal:1
  #   container_name: shirasagi_https-portal
  #   ports:
  #     - '80:80'
  #     - '443:443'
  #   environment:
  #     DOMAINS: >-
  #       your.domain -> http://nginx
  #     # STAGE: 'production' # Don't use production until staging works
  #     WORKER_PROCESSES: auto
  #     WORKER_CONNECTIONS: 2048
  #     CLIENT_MAX_BODY_SIZE: '128M'
  #   links:
  #     - nginx
  #   volumes:
  #     - ./certs:/var/lib/https-portal
  #   restart: always
```


## Run

Wakeup docker container.

`$ sudo docker compose up -d`

Access the following URL with a browser.

< http://localhost/admin/ >
