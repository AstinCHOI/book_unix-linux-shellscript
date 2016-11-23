#!/bin/sh

# Use: trap, uptime, .

# Run: 1) ./script
# 2) ps x
# 3) kill -s HUP (process id)

loadconf() {
  . ./setting.conf
}

trap 'loadconf' HUP # normally use rereading setting file

loadconf

while :
do
  uptime >> "${UPTIME_FILENAME}"
  sleep 1
done