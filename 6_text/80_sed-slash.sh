#!/bin/sh

outdir="newdir"

if [ ! -f $newdir ]; then
  echo "There is no output directory: $newdir" >&2
  exit 1
fi

for htmlfile in *.htmlfile
do
  # change /img/ to /imges
  sed "s%/img/%/images/%g" "$htmlfile" > "${outdir}/${htmlfile}"
  ## sed "s/blue/red/g" sample.txt
  ## sed "s/\/img\//\/images\//g" sample.txt
done