#!/bin/sh

# Use: service, ps, wc, grep, date, echo


commname="/usr/sbin/httpd"

# Mac/FreeBSD
start="/usr/sbin/apachectl start"

## Linux
# start="service httpd start"

count=$(ps ax -o command | grep "$commname" | grep -v "^grep" | wc -l)

if [ "$count" -eq 0 ]; then
  date_str=$(date '+%Y/%m/%d %H:%M:%S')
  echo "[$date_str] Can't find process $commname." >&2
  echo "[$date_str] Execute process $commname." >&2
  $start
fi

## Suppose this script is on the cron config (/etc/crontab)