## Haproxy Dockerfile


This repository contains **Dockerfile** of [Haproxy](http://haproxy.1wt.eu/) for [Docker](https://www.docker.io/)'s [trusted build](https://index.docker.io/u/dockerfile/haproxy/) published to the public [Docker Registry](https://index.docker.io/).


### Dependencies

* [dockerfile/ubuntu](http://dockerfile.github.io/#/ubuntu)


### Installation

1. Install [Docker](https://www.docker.io/).

2. Download [trusted build](https://index.docker.io/u/dockerfile/haproxy/) from public [Docker Registry](https://index.docker.io/): `docker pull dockerfile/haproxy`

   (alternatively, you can build an image from Dockerfile: `docker build -t="dockerfile/haproxy" github.com/dockerfile/haproxy`)


### Usage

    docker run -it --rm dockerfile/haproxy
