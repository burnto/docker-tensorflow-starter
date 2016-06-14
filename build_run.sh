#!/usr/bin/env bash

IFS=':' read -ra DOCKER_BUILD_OUT <<< "$(docker build -q .)"
DOCKER_IMAGE_ID="${DOCKER_BUILD_OUT[1]}"

docker run -it \
  -v `pwd`/share:/share \
  $DOCKER_IMAGE_ID \
  /bin/bash

