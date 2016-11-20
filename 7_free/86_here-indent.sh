#!/bin/sh

# Use: cat

# Run: ./script something

if [ -z "$1" ]; then
  echo "need to title argument." >&2
  exit 1
else
	# $1 string to title element
	# with <<"-", indentation ignoring tab
	cat <<-EOT
	<html>
	<head>
		<title>$1</title>
	</head>

	<body>
		<p>Auto HTML sample.</p>
	</body>
	</html>
	EOT
	# TAB, not space in here document
fi