#!/bin/sh

# Use: cat, rpm

# Run: $ ./script pkg.lst

if [ ! -f "$1" ]; then
  echo "There is no target list file: $1" >&2
  exit 1
fi

pkglist=$(cat "$1")

# print installed rpm updated date 
rpm -p $pkglist --queryformat '%{INSTALLTIME:date} : %{NAME}\n'