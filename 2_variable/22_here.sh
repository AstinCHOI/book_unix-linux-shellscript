#!/bin/sh

str="Dummy"

# 1)
# << Here document
cat << 'EOT'
Here is 'Here document' body.
This written string redirects to standard command output.

If end string has with small quotation(''), $str variable can't extend,
And also `echo abc` doesn't work out.
EOT

# 2)
string="Hello"
cat << EOT
This variable extends. $string
This doesn't \$string
EOT

# 3)
# <<< Here String
cat <<< "Hello Example:
Hi.
$string
Hello"


###
# "" : variables can extend
# '' : variables can't extend
###