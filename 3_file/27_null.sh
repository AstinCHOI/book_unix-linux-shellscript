#!/bin/sh

# Use: :(null), uptime, sleep

uptimelog="../example/uptime.log"

: > $uptimelog
# Same as
# cp /dev/null $uptimelog
# cat /dev/null > $uptimelog
# true > $uptimelog
# but : is better 

for i in 1 2 3 4 5 6  # a b c d e f .. whatever
do
  uptime >> $uptimelog
  sleep 10
done