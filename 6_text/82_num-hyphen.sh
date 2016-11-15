#!/bin/sh

# Use: getopts, shift, awk, grep, sed

# Run: ./script number-nohyphen.txt or number-hyphen.txt

# hyphen flag
d_flag=0

while getopts "d" option # d_flag
do
  case $option in
    d)
      d_flag=1
      ;;
    /?)
      exit 1
      ;;
  esac
done

# because of -d
shift $(expr $OPTIND - 1)
filename="$1"

if [ ! -f "$filename" ]; then
  echo "$filename doesn't exist." >&2
  exit 1
fi

# d_flag: remove "-"
if [ "$d_flag" -eq 1 ]; then
  awk '{print $1}' "$filename" | grep '^[0-9]\{3\}-[0-9]\{4\}$' | sed "s/-//"
else
  awk '{print $1}' "$filename" | grep '^[0-9]\{7\}-[0-9]\{4\}$' | sed "s/\(...\)/\1-/"
fi