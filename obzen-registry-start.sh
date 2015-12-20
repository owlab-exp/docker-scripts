#!/bin/sh
docker run -d -p 5000:5000 --restart=always --name obzen-registry -v /data/docker-volumes/obzen-registry:/var/lib/registry registry:2
