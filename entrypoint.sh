#!/bin/bash

echo "Updating Squid Config"
sed -i '/acl localnet src 172.16.0.0\/12/s/^#//g' /etc/squid/squid.conf
sed -i '/http_access allow localnet/s/^#//g' /etc/squid/squid.conf

echo "${PASSWORD}" | openconnect ${OPTIONS} ${SERVER}

service squid start
while true; do sleep 1000; done