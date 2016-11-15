#!/bin/sh

# Use: head, mv

if [ ! -f "$1" ]; then
  echo "File doesn't exist: $1" >&2
  exit 1
fi

headline=$(head -n 1 "$1")

case "$headline" in
  */bin/sh|*bash*)
    mv -v "$1" "${1}.sh"
    ;;
  *perl*)
    mv -v "$1" "${1}.pl"
    ;;
  *ruby*)
    mv -v "$1" "${1}.rb"
    ;;
  *)
    echo "Unknown Type: $1"
esac

## .sh: need read/execute mode
## others: just need execute mode