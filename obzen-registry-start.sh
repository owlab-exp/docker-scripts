#!/bin/sh
docker run -d --restart=always --name obzen-registry -p 5000:5000 -v /data/docker-volumes/obzen-registry:/var/lib/registry registry:2
