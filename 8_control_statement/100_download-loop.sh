#!/bin/sh

# Use: true, curl, sleep

url=http://astinchoi.github.io

while true
# while :
do
  curl -so /dev/null "$url"
  # s: silent / o: output

  ## in freeBSD
  # fetch -qo /dev/null "$url"

  if [ $? -eq 0 ]; then
    echo "[check OK]"
  else
    echo "[check NG]"
  fi

  sleep 5
done