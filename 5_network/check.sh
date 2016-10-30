#!/bin/sh

checkserver="192.168.2.35"

hostname

ping -c 1 "$checkserver" > /dev/null 2>&1

if [ $? -eq 0 ]; then
  echo "Ping to $checkserver : [OK]"
else
  echo "Ping to $checkserver : [NG]"
fi