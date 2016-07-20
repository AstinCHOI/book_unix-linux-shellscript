#!/bin/sh

# Use: test, expr

test "$1" -eq 0 2>/dev/null

# echo $?
# 1: == 0
# 2: != 1
# 3: not comparable 

if [ $? -lt 2 ]; then
    echo "Argument is Integer."
    expr 10 + $1
else
    echo "Argument is not Integer."
    exit 1
fi

# expr $i + $j
# expr $i - $j
# expr $i \* $j
# expr $i / $j