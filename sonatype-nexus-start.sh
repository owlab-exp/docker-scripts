#!/bin/sh
docker run --detach \
    --publish 8081:8081 \
    --name nexus \
    --restart always \
    --volume /data/docker-volumes/nexus-data:/sonatype-work \
    sonatype/nexus:oss
