#!/bin/sh

# Use: vmstat, awk, data, echo

swapcount_limit=10

## Linux 
# swapcount=$(vmstat 1 6 | awk 'NR >= 4 {sum += $7 + $8} END{print sum}')

# swap in/out check for 6 times per 1 sec

## FreeBSD
# swapcount=$(vmstat 1 6 | awk 'NR >= 4 {sum += $8 + $9} END{print sum}')

## Mac
swapcount=$(vm_stat -c 3 1 | awk 'NR >= 4 {sum += $21 + $22} END{print sum}')

if [ "$swapcount" -ge "$swapcount_limit" ]; then
  date_str=$(date '+%Y/%m/%d %H:%M:%S')

  echo "[$date_str] Swap Alert: $swapcount (si+so)"
  # ./alert.sh
fi