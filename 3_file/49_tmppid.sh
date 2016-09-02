#!/bin/sh

# Use: date, cat

## $$: process id
tmpfile="tmp.$$"

date > $tmpfile
sleep 10

cat $tmpfile
rm -f $tmpfile

## you can use "mktemp" command instead of using $$ for secure