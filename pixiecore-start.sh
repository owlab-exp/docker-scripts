#!/bin/sh
docker run -d --name pixiecore --restart=always -v /data/docker-volumes/pxe-image:/image --net=host danderson/pixiecore -kernel /image/coreos_production_pxe.vmlinuz -initrd /image/coreos_production_pxe_image.cpio.gz --cmdline coreos.autologin 
