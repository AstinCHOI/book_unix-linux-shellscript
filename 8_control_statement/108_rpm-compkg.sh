#!/bin/sh

# Use: rpm, exit

if [ ! -f "$1" ]; then
  echo "There is no file: $1"
  exit 2
fi

pkgname=$(rpm -qf "$1")

if [ $? -eq 0 ]; then
  echo "$1 -> $pkgname"
else
  echo "$1 doesn't include the package." >&2
  exit 1
fi

## package include?
# rpm -qf ..

## package include file list
# rpm -ql ..