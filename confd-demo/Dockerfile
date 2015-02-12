FROM ubuntu:14.04

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get -y install curl && \
    curl -o /usr/bin/confd -L https://github.com/kelseyhightower/confd/releases/download/v0.7.1/confd-0.7.1-linux-amd64 && \
    chmod 755 /usr/bin/confd

ADD etc/confd/ /etc/confd

#this environemtn variable needs to be passed in
CMD /usr/bin/confd -interval=60 -node=http://$COREOS_PRIVATE_IPV4:4001
