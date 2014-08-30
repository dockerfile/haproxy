## Haproxy Dockerfile


This repository contains **Dockerfile** of [Haproxy](http://haproxy.1wt.eu/) for [Docker](https://www.docker.com/)'s [automated build](https://registry.hub.docker.com/u/dockerfile/haproxy/) published to the public [Docker Hub Registry](https://registry.hub.docker.com/).


### Base Docker Image

* [dockerfile/ubuntu](http://dockerfile.github.io/#/ubuntu)


### Installation

1. Install [Docker](https://www.docker.com/).

2. Download [automated build](https://registry.hub.docker.com/u/dockerfile/haproxy/) from public [Docker Hub Registry](https://registry.hub.docker.com/): `docker pull dockerfile/haproxy`

   (alternatively, you can build an image from Dockerfile: `docker build -t="dockerfile/haproxy" github.com/dockerfile/haproxy`)


### Usage

    docker run -d -p 80:80 dockerfile/haproxy

#### Customizing Haproxy

    docker run -d -p 80:80 -v <override-dir>:/haproxy-override dockerfile/haproxy

where `<override-dir>` is an absolute path of a directory that could contain:

  - `haproxy.cfg`: custom config file (replace `/dev/log` with `127.0.0.1`, and comment out `daemon`)
  - `errors/`: custom error responses

After few seconds, open `http://<host>` to see the haproxy stats page.
