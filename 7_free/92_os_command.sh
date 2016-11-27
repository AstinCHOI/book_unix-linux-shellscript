#!/bin/sh

# Use: uname, echo


# uname -s option: OS
case $(uname -s) in
  # MAC: /bin/echo
  Darwin)
    ECHO="/bin/echo"
    ;;
  *)
    ECHO="echo"
    ;;
esac

$ECHO -n "This message is one"
$ECHO "line"

## uname -s
# Linux -> Linux
# FreeBSD -> FreeBSD
# MacOS -> Darwin
# Solaris -> SunOS