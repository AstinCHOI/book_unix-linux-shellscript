#!/bin/sh

# Use: ps, grep, wc

commname="/home/user1/bin/calc"
threshold=3

count=$(ps ax -o command | grep "$commname" | grep -v "^grep" | \
    wc -l | tr d ' ')

if [ "$count" -ge "$threshold" ]; then
  echo "[ERROR] process $commname executes multiply($count)" >&2
  ./alert.sh
fi