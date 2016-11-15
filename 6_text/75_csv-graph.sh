#!/bin/sh

# Use: echo, awk, sort, head, expr, read

csvfile="data.csv"
GRAPH_WIDTH=50

markprint() {
  local i=0
  while [ $i -lt $1 ]
  do
    /bin/echo -n "*"
    i=$(expr $i + 1)
  done
}

# max value using reverse sort
max=$(awk -F, '{print $3}' "$csvfile" | sort -nr | head -n 1)

if [ $max -eq 0 ]; then
  max=1
fi

while IFS=, read id name score
do
  markprint $(expr $GRAPH_WIDTH \* $score / $max)
  echo " [$name]"
done < $csvfile
