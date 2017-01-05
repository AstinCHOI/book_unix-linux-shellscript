#!/bin/sh

# Use: mysql, date, tr

DBHOST="192.168.11.5"
DBUSER="user1"
DBPASS="PASSWORD"
DBNAME="astin"

MYSQL="/usr/bin/mysql"

csv_outputdir="/home/user1/output"
sqlfile="/home/user1/bin/select.sql"

if [ ! -f "$sqlfile" ]; then
  echo "There is no SQL file: $sqlfile" >&2
  exit 1
fi

if [ ! -d "$csv_outputdir" ]; then
  echo "There is no CSV output directory: $csv_outputdir" >&2
  exit 1
fi

today=$(date '+%Y%m%d')

$MYSQL -h "${DBHOST}" -u "${DBUSER}" -p"${DBPASS}" -D "${DBNAME}" -N \
  < "$sqlfile" | tr "\t" "," > "${csv_outputdir}/data-${today}.csv"