# confd-demo

This container is a demonstration of how run confd in
a separate container from nginx. If uses a shared
data volume for the nginx config, with the confd container
using the Docker API to send a HUP signal to the nginx
container.

See this blog post for the full details

http://blog.dixo.net/2015/02/load-balancing-with-coreos/

Improvements are welcome, just make a pull request.