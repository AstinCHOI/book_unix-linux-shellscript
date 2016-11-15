#!/bin/sh

# Use: grep, printf

search_text="ERROR 19:"

for filename in *.log
do
  # -c option: the matched number of line
  count=$(grep -c "$search_text" "$filename")

  printf "%6s (%s)\n" "$count" "$filename"
done