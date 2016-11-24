#!/bin/sh

# Use: trap, rm

# Run: ./script

tmpfile="calctmp.$$"
: > "$tmpfile"

trap 'rm -f "$tmpfile"' EXIT # when exit, remove tmpfile

./calcA.sh >> "$tmpfile"
./calcB.sh >> "$tmpfile"

awk '{sum+=$1} END{print sum}' "$tmpfile"