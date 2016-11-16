#!/bin/sh

# Use: sed

outdir="newdir"

if [ ! -d "$outdir" ]; then
  echo "Not a directory: $outdir"
  exit 1
fi

for filename in *.js
do
  # POSIX
  sed '/^[[:blank::]]*$/d' "$filename" > "${outdir}/${filename}"
done