#!/bin/sh

# Use: exec

# Run: ./script -o output.txt

TMPDIR="/disk1/tmp"
export TMPDIR

exec ./myappd "$@"

## This program calls "wrapper".

## $@ => $1 $2 $3 ..
## "$@" = "$1" "$2" "$3"

## exec : not use fork