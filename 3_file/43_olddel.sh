#!/bin/sh

# Use: test, rm

log1="41_rename.sh"
log2="42_test.sh"

filecheck()
{
    if [ ! -e "$1" ]; then
        echo "ERROR: File $1 does not exist." >&2
        exit 1;
    fi
}

filecheck "$log1"
filecheck "$log2"

# -nt: newer than
# -ot: order than
if [ "$log1" -nt "$log2" ]; then
    echo "[$log1]->newer, [$log2]->older"
    # rm $log2
else
    echo "[$log2]->newer, [$log1]->older"
    # rm $log1
fi