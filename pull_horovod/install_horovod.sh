#!/bin/bash

mkdir horovod-docker-gpu
wget -O horovod-docker-gpu/Dockerfile https://raw.githubusercontent.com/horovod/horovod/master/Dockerfile.gpu
docker build -t horovod:latest horovod-docker-gpu
