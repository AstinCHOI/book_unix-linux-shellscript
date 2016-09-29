#!/bin/sh

ipaddr="www.google.com"
faillog="../example/fail-port.log"


# 80, 2222, 8080
for port in 80 2222 8080
do
  nc -w 5 -z $ipaddr $port

  if [ $? -ne 0 ]; then
    echo "Failed at port: $port" >> "$faillog"
  fi
done

## nc
# -z option: tcp 3way handshake, not data communication
# -w option: timeout