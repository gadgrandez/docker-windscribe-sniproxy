#!/bin/bash

/usr/sbin/sniproxy -c /etc/sniproxy.conf -f &

/bin/bash /docker-entrypoint.sh
