#!/bin/sh

# Use: echo

price=100
str='It costs $'$price'? I can'\''t believe it!'
echo $str

echo "My Terminal: $TERM"
echo 'My Terminal: $TERM'

str='He said "Hello!". I said "Hello".'
echo $str