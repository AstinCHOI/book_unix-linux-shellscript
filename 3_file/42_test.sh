#!/bin/sh

start_command="../example/start.sh"

if [ -f "$start_command" -a -x "$start_command" ]; then
    $start_command
else
    echo "ERROR: -f $start_command -a -x $start_command failed." >&2
    exit 1
fi

# test -x start.sh && ./start.sh

## man test
# -d: directory
# -e: exist
# -b: exist && block special file
# -c: exist && character special file
# -f: exist && regular file
# -L: exist && symbolic link
# -r: exist && readable
# -w: exist && writable
# -x: exist && excutable
# -s: exist && size > 0
# -O: exist && valid User ID
# -S: exist && socket


if grep -q "bin" sample.txt ; then
    echo "sample.txt has string [bin]"
fi