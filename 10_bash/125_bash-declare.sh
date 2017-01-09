#!/bin/bash

# Use: declare, curl

url_template="http://www.example.org/download/img%03d.jpg"

declare -i count=0

while [ $count -le 10 ]
do
  url=$(printf "$url_template" $count)
  curl -O "$url"

  # It's okay without expr command
  # count=$(expr $count + 1)
  count=count+1
done

## in Terminal
# declare -i count=2
# declare -p count
# => declare -i count="2"