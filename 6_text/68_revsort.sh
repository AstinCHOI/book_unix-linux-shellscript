#!/bin/sh

# Use: rev, sort

# Run: $./68_revsort.sh id.lst

tmpfile="sort.lst"

if [ ! -f "$1" ]; then
  echo "There is no file for id list." >&2
  exit 1;
fi

rev "$1" | sort | rev > $tmpfile

./report.sh $tmpfile

rm -f $tmpfile