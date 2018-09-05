#!/bin/sh
set -e

envsubst < /haproxy.cfg > /usr/local/etc/haproxy/haproxy.cfg
haproxy -W -db -f /usr/local/etc/haproxy/haproxy.cfg

