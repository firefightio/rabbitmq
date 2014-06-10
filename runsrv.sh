#!/bin/bash

if [ ! -f /.configured ]; then
# add the vhost
(sleep 10 && rabbitmqctl add_vhost firefight && rabbitmqctl set_permissions -p firefight firestarter ".*" ".*" ".*") &

touch /.configured
fi

exec /usr/sbin/rabbitmq-server
