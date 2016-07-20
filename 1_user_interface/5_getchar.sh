#!/bin/sh

# Use: stty, case, dd

/bin/echo -n "Type Your Answer [y/n]: "

# backup current shell setting to tty_state then set raw
tty_state=$(stty -g)
stty raw

# read a char from keyboard(bs: block size | count: block count)
char=$(dd bs=1 count=1 2> /dev/null)
# back to original setting
stty "$tty_state"

echo

case "$char" in
    [yY])
        echo "Input: Yes"
        ;;
    [nN])
        echo "Input: NO"
        ;;
    *)
        echo "Input: What?"
        ;;
esac