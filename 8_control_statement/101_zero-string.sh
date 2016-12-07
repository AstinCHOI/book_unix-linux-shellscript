#!/bin/sh

# Use: read, cut, test

match_id=1
csvfile="data.csv"

if [ ! -f "$csvfile" ]; then
  echo "There is no csv file: $csvfile" >&2
  exit 1
fi

while read line
do
  id=$(echo $line | cut -f 1 -d ',')
  name=$(echo $line | cut -f 2 -d ',')

  if [ "$id" -eq "$match_id" ]; then
    echo "$name"
  fi
done < "$csvfile"

##
str="00001"
str=$(echo "$str" | sed "s/^0*//")
echo "$str"

##
s=$(expr "0000001" + 1)
echo "$s"

## number condition
# [ "00001" -eq 1 ] => true
# [ "1" -eq 1 ] => true

# [ "000001" -eq "1" ] => false