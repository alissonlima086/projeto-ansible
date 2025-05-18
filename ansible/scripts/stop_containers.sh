#!/bin/bash

for container in "$@"; do
  if [ -n "$container" ]; then
    echo "Parando container: $container"
    docker stop "$container"
  fi
done
