#!/bin/bash
if [ -f .env ]; then
  export $(echo $(cat .env | sed 's/#.*//g'| xargs) | envsubst)
fi

if [[ $1 == "init" ]]; then
    terraform $@ -backend-config=config.s3.tfbackend
else
    terraform $@
fi
