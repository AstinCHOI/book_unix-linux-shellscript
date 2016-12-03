#!/bin/sh

# Use: deq, printf, curl

url_template="http://www.example.org/download/img_%03d.jpg"

## seq command
## freeBSD: jot instead of seq / fetch instead of curl
for i in $(seq 10)
do
  url=$(printf "$url_template" $i)
  curl -0 "$url"
done

# http://www.example.org/download/img_001.jpg
# http://www.example.org/download/img_002.jpg
# http://www.example.org/download/img_003.jpg ...

## seq example
# seq 5
# > 1 2 3 4 5
# seq 3 5
# > 3 4 5
# seq 5 10 45
# > 5 15 25 35 45

## expr
# i=1
# while [ "$i" -le 10 ]
# do
#   ($i something..)
#   i=$(expr $i + 1)
# done

## seq
# for I in $(seq 1000)
#   echo "$i" > ${i}.txt
# done