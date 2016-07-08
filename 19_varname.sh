#!/bin/sh

# Use: wc

today="20160708"

wc -l ${today}_log


# use {}: bash only
declare -a number=("zero" "one" "two")
echo ${number[1]}
# one
echo $number[1]
# zero[1]