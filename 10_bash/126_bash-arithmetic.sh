#!/bin/bash

# Use: echo

for i in {1..100}
do
  # $(expr $i \* 3)
  echo $((i * 3)) > ${i}.txt
  rm ${i}.txt
done