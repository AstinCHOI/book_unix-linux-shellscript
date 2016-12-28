#!/bin/sh

# disk usage value to allow to check
used_limit=90
tmpfile="df.tmp.$$"

# df command for disk usage / remove first header to header
df -P | awk 'NR >= 2 {print $5,$6}' > "$tmpfile"

# df command
while read percent mountpoint
do
  # 31% to 31: remove %
  percent_val=${percent%\%}

  if [ "$percent_val" -ge "$used_limit" ]; then
    date_str=$(date '+%Y/%m/%d %H:%M:%S')

    echo "[$date_str] Disk Capacity Alert: $mountpoint ($percent used)"
    # ./alert.sh
  fi
done < "$tmpfile"

rm -f "$tmpfile"

## df option
# -h: human readable ex) 2G
# -k: 1024byte(1k byte) unit
# -i: i node info
# -p: POSIX format, one line for file system name
# -l: local file system