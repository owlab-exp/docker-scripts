#!/bin/sh
docker run --detach \
    --hostname gitlab.obzen.com \
#   To change internal port 80 to 8085, edit external_url of the gitlab.rb 
#    --publish 8445:443 --publish 8085:80 --publish 2225:22 \
    --publish 8445:443 --publish 8085:8085 --publish 2225:22 \
    --name gitlab \
    --restart always \
    --volume /data/docker-volumes/gitlab/config:/etc/gitlab \
    --volume /data/docker-volumes/gitlab/logs:/var/log/gitlab \
    --volume /data/docker-volumes/gitlab/data:/var/opt/gitlab \
    obzen-reg:5000/obzen/gitlab/gitlab-ce
