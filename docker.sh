#!/bin/bash

mkdir -p /mnt/db
cd /opt
git clone https://github.com/ComondanteChe/shvirtd-example-python.git
wait
docker build -f /opt/shvirtd-example-python/Dockerfile.python -t shvirtd-example-python /opt/shvirtd-example-python
docker compose -f /opt/shvirtd-example-python/compose.yaml up -d
