#!/bin/bash

# Use: select, case

PS3='Menu: '

select item in "list file" "current directory" "exit"
do
  case "$REPLY" in
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