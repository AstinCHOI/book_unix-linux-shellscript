#!/bin/sh

# Use: cd, echo, tar

# isolated subshell 
(
  echo "Archive: /var/tmp/archive.tar"
  cd /var/tmp
  tar cvf archive.tar *.txt
)

# run current directory
echo "Start: command.sh"
./command.sh