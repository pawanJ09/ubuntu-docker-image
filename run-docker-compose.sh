#!/bin/bash

echo "START"
/bin/bash ./env-eval.sh
eval "docker-compose up -d"
echo "END"