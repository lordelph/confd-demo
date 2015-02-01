#!/bin/bash

#change this if you intend pushing to your own
#repository
DUSER=lordelph

CONFD_IMAGE=${DUSER}/confd-demo

cd confd
docker build --tag="$CONFD_IMAGE" .
docker push $CONFD_IMAGE
cd ..
