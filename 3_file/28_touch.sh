#!/bin/sh

# Use: touch

# YYYYMMDDhhmm.SS
timestamp="201612120700.45"

# update timestamp
# options
# -t: update atime & mtime
# -a, -m: for each
# -c: if no file, no create

touch -t $timestamp ../example/command.htm

# Good example
touch -c -t $timestamp ../example/lock.tmp

# Bad example
if [ -e ../example/lock.tmp ]; then
    touch -t $timestamp ../example/lock.tmp
fi

# atime: access time
# mtime: modify time
# ctime: change time

# $ stat -x touch.sh