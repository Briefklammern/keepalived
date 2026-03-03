#!/bin/bash
if [ -e /var/www/html/index.nginx-debian.html ]; then
  file_state=$?
else
  file_state=$?
fi
nc -z 192.168.1.50 80
port_state=$?
if [ $file_state -eq 0 ] && [ $port_state -eq 0 ]; then
  exit 0
else
  exit 1
fi
