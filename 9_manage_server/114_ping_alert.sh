#!/bin/sh

# Use: ping, sleep, date

# Run: ./script [ip]

# success -> 0
result=1

## -z option: empty string is true
if [ -z "$1" ]; then
 echo "input the target host" >&2
 exit 1
fi

i=0
while [ $i -lt 3 ]
do
  ## -c : count / -i: seconds / -q: quiet mode
  ping -c 1 "$1" > /dev/null
  
  if [ $? -eq 0 ]; then
    result=0
    break
  else
    sleep 3
    i=$(expr $i + 1)
  fi
done

date_str=$(date '+%Y/%m/%d %H:%M:%S')

if [ $result -eq 0 ]; then
  echo "[$date_str] Ping OK: $1"
else
  echo "[$date_str] Ping NG: $1"
fi