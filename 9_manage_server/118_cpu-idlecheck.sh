#!/bin/sh

# Use: mpstat, tail, awk, echo, date, iostat

idle_limit=10.0

## Average value in linux
# cpu_idle=$(mpstat 1 5 | tail -n 1 | awk '{print $NF}')
## NF - Last Column

## FreeBSD
# cpu_idle=$$(iostat 1 6 | awk 'NR >= 4 {sum += $NF} END{print sum/5.0}')

## Mac
cpu_idle=$(iostat 1 6 | awk 'NR >= 4 {sum += $(NF-3)} END{print sum/5.0}')


is_alert=$(echo "$cpu_idle < $idle_limit" | bc)
## integer for expr
## float for bc


if [ "$is_alert" -eq 1 ]; then
  date_str=$(date '+%Y/%m/%d %H:%M:%S')

  echo "[$date_str] CPU %idle Alert: $cpu_idle (%)"
  # ./alert.sh
fi