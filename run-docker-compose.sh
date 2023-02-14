#!/bin/bash

echo "START"
/bin/bash ./env-eval.sh
if [ -z "$1" ]
then
  echo "Use existing image"
  eval "docker-compose up -d"
else
  echo "Pulling latest image"
  eval "docker-compose rm -f my-ubuntu-svc && docker-compose pull && docker-compose up -d"
fi
echo "END"