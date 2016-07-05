#!/bin/sh

# Use: . (in bash: source)

. ./example/env.sh

nowtime
cp -i -v ~/Desktop/hello.txt "$WORK_DIR"
nowtime

# Good Example
# [ -f /etc/sysconfig/sshd ] && . /etc/sysconfig/sshd