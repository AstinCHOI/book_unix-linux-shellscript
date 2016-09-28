#!/bin/sh

while read ipaddr
do
  # host to ip
  revlookup=$(host "$ipaddr")

  if [ $? -eq 0 ]; then
    /bin/echo -n "$ipaddr,"
    /bin/echo "$revlookup" | awk '{print $NF}' | sed 's/\.$//'
  else
    /bin/echo "$ipaddr,"
  fi

  # for DNS server load
  sleep 1
done < $1