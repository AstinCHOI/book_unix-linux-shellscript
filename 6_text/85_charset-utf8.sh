#!/bin/sh

# Use: grep, sed, iconv

outdir="newdir"

if [ ! -d "$outdir" ]; then
  echo "Not a directory: $outdir"
  exit 1
fi

for filename in *.html
do
  charset=$(grep -i '<meta ' "$filename" |\
  grep -i 'http-equiv="Content-Type"' |\
  sed -n 's/.*charset=\([-_a-zA-Z0-9]*\)".*/\1/p')


  if [ -z "$charset" ]; then
    echo "charset not found: $filename" >&2
    continue
  fi

  iconv -c -f "$charset" -t UTF-8 "$filename" > "${outdir}/${filename}"
done

## in html5
## <meta charset="UTF-8">
## sed -n 's/<meta .*charset="\([-_a-zA-Z0-9]*".*/\1/p')