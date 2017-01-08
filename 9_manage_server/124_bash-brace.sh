#!/bin/bash

# Use: ping, echo

for ipaddr in 192.168.0.{1..5}
do
  ping -c 1 "$ipaddr" > /dev/null 2>&1

  if [ $? -eq 0 ]; then
    echo "[OK] Ping -> $ipaddr"
  else
    echo "[NG] Ping -> $ipaddr"
  fi
done