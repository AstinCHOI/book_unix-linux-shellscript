#!/bin/sh

# Use: cat, ssh, hostname, ping

username="user1"
script="check.sh"

cat $script | ssh ${username}@192.168.2.4 "sh"
cat $script | ssh ${username}@192.168.2.5 "sh"
cat $script | ssh ${username}@192.168.2.6 "sh"