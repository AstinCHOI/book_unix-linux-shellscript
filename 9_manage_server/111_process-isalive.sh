#!/bin/sh

# Use: ps, grep, wc

commname="/usr/libexec/mysqld"

count=$(ps ax -o command | grep "$commname" | grep -v "^grep" | wc -l)

if [ "$count" -eq 0 ]; then
  echo "[ERROR] Cannot find process $commname" >&2
  alert.sh
fi

## ps command
# ax option : all process
# -o command option: command name

## grep -v option: remove the pattern including