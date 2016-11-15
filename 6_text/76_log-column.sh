#!/bin/sh

# Use: awk

# Run: ./script access_log

if [ ! -f "$1" ]; then
  echo "$1 doesn't exist." >&2
  exit 1
fi

awk '{print $4,$5,$1}' "$1" > "${1}.lst"
