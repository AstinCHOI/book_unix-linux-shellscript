#!/bin/sh

# Use: read, case

while :
do
  echo "Menu:"
  echo "1) list file"
  echo "2) current directory"
  echo "3) exit"

  read number
  case $number in
    1)
      ls
      ;;
    2)
      pwd
      ;;
    3)
      exit
      ;;
    *)
      echo "Error: Unknown Command"
      ;;
  esac

  echo
done