#!/bin/sh

# Use: cp, tar

# TMPDIR=/large/tmp; export TMPDIR
# ./var-parameter.sh


# := null 
cp largefile.tar.gz ${TMPDIR:=/tmp}
cd $TMPDIR
tar xzf largefile.tar.gz

echo "Extract files to $TMPDIR."

# :- just check
# TMPDIR = null
# cp largefile.tar.gz ${TMPDIR:-/tmp} # copy it to /tmp
# cd $TMPDIR # cd

# :?
# ${var:?message} # if 'var' is null, print 'message' with error and exit, else returns 'var' 
# : ${MYDIR:?error: no MYDIR}

# :+
# ${var:+word} # if 'var' is null, return null, else returns 'word'
# flag = ${MYDIR:+1}