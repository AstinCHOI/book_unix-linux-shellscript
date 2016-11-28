#!/bin/sh

# Use: echo

{
  echo "[Script start]"
  date
  ls
  echo "[Script end]"
} > output.log

# Same as
# { echo "[Script start]"; date; ls; echo "[Script end]"; } > output.log