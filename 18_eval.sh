#!/bin/sh

# Use: sed, eval

filename="example/myapp.log"

eval $(sed -n "s/<code>\(.*\)<\/code>/\1/p" "example/command.htm")

# sed -n : not print pattern space
# /p: print matched pattern space

# command.htm
# <html>
# <head><title>Code List</title></head>

# <body>
# <p>This is a sample code.</p>
# <code>date; ls -l $filename</code>

# </body>
# </html>