#!/bin/sh

# Use: sed, ping

# Run: ./script 192.168.123

if [ -z "$1" ]; then
  echo "input up to third octet of IP Address." >&2
  exit 1
fi

# read ping_traget.lst
for ipaddr in $(sed "s/%ADDR_HEAD%/$1/" ping_target.lst)
do
  ping -c 1 $ipaddr > /dev/null 2>&1

  if [ $? -eq 0 ]; then
    echo "[Success] ping -> $ipaddr"
  else
    echo "[Failed] ping -> $ipaddr"
  fi
done