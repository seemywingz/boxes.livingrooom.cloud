#!/bin/bash

yarn

yarn dist

docker buildx build \
  --push \
  --platform linux/arm/v7,linux/amd64 \
  --tag virtualkev/boxes.livingroom.cloud:1.0 .
