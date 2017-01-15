#!/bin/bash

# Use: nc, echo, sleep

ipaddr="www.google.com"
port=80

waittime=$((RANDOM % 10 + 1))

nc -w 5 -zv $ipaddr $port
echo "Wait: $waittime sec."
sleep $waittime
nc -w 5 -zv $ipaddr $port