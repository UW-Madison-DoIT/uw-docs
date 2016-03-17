#!/bin/bash

bower --config.interactive=false --allow-root install
docker build -f Dockerfile_release -t docker.doit.wisc.edu/myuw/uw-docs .

if [[ $1 == 'Y' ]]; then
  CUR_PATH=`pwd`
  docker stop uw-docs-rel
  docker rm uw-docs-rel
  docker run -d -v $CUR_PATH/markdown:/data/markdown -p 8009:8009 --name uw-docs-rel docker.doit.wisc.edu/myuw/uw-docs
fi
