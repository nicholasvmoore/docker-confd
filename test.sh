#!/bin/bash

docker run --rm -v /mnt/lun00/coreos00/confd/dev/wordpress:/etc/confd:rw --name=confd nicholasvmoore/docker-confd
