#!/bin/bash
#this script is invoked by confd when it updates the templated
#configuration files. We use the Docker API to tell the docker service
#on the host to send a HUP signal to nginx. This requires that the
#confd container has got the /var/run/docker.sock unix socket exposed to
#it, which means launching the container with
#-v /var/run/docker.sock:/var/run/docker.sock

#so instead, we send an http request over the domain socket
echo -e "POST /containers/connect-lb-nginx/kill?signal=HUP HTTP/1.0\r\n" | \
  nc -U /var/run/docker.sock

