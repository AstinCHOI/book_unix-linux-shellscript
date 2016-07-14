#!/bin/sh

# Use: cd, dirname

cd "$(dirname "$0")/example"
# cd "${0%/*}/example"
# ${parameter%word}

./start.sh
./end.sh

# START
# END