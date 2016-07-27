#!/bin/sh

# Use: basename, sed

for htmlfile in ../example/*.html
do
    # get filename except file extension.
    fname=$(basename $htmlfile .html)

    # extract <title> tag content by \1
    sed -n "s/^.*<title>\(.*\)<\/title>.*$/\1/p" $htmlfile > ../example/${fname}.txt
done

# sed options
# -n: no pattern space
# -p: ...