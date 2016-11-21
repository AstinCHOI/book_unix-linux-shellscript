#!/bin/sh

# Use: trap, nc, sleep

# Run: 1) ./script
# 2) ps x
# 3) kill -s USR1 (process id)

## USR1: User Application Signal

count=0

server="8.8.8.8"

trap 'echo "Try Count: $count"' USR1

while [ "$count" -le 1000 ]
do
  count=$(expr $count + 1)
  nc -z "$server" 53
  sleep 1
done