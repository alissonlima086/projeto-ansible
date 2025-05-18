#!/bin/bash

# Lista todos os IDs dos containers (incluindo parados)
containers=$(docker ps -aq)

if [ -z "$containers" ]; then
  echo "Nenhum container encontrado para remover."
  exit 0
fi

echo "Removendo todos os containers..."
docker rm -f $containers
