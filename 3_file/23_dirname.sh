#!/bin/sh

# Use: cd, dirname

echo "\$(\dirname \"\$0\"): $(dirname "$0")"
echo "\${0%/*}: ${0%/*}"

cd "$(dirname "$0")"
# cd "${0%/*}"
# ${parameter%word}

./../example/start.sh
./../example/end.sh

# START
# END