#!/bin/bash
docker ps -a --format "{{.ID}} {{.Image}} {{.Status}}"
