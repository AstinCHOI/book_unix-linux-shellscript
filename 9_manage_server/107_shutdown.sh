#!/bin/sh

# Use: who, ps, shutdown

other_user=$(who | wc -l)
if [ "$other_user" -ge 2 ]; then
  echo "[ERROR] who command line is more than 2 lines: there is user working on it." >&2
  exit 1
fi

commname="/usr/libexec/mysqld"
ps ax -o command | grep -q "^$commname"

if [ $? -eq 0 ]; then
  echo "[ERROR] shutdown halt: process $commname is working" >&2
  exit 2
fi

# caution to use MAC/FreeBSD
shutdown -h now # FreeBSD: -p instread of -h

# -h: halt / -r: reboot