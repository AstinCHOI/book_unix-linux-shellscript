#!/bin/sh

# Use: mv

for filename in * # current directory file list
do
  case "$filename" in
    *.htm | *.html)
    
      headname=${filename%.*}

      mv "$filename" "${headname}.txt"
    ;;
  esac
done

## caution !!
# [abc.htm abc.html] mv to be [abc.txt]

## in linux you can use
# rename .htm .txt *.htm
