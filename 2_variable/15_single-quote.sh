#!/bin/sh

# Use: echo

price=100
str='It costs $'$price'? I can'\''t believe it!'
echo $str
# It costs $100? I can't believe it!

echo "My Terminal: $TERM"
echo 'My Terminal: $TERM'
# My Terminal: xterm
# My Terminal: $TERM

str='He said "Hello!". I said "Hello".'
echo $str
# He said "Hello!". I said "Hello".