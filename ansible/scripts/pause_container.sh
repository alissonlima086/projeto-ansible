#!/bin/bash

container_name=$1

if [ -z "$container_name" ]; then
  echo "Uso: $0 <nome_ou_id_do_container>"
  exit 1
fi

docker pause "$container_name"
