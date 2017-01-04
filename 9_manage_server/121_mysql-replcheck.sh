#!/bin/sh

# Use: mysql, awk, grep, data

DBHOST="192.168.11.5"
DBUSER="operator"
DBPASS="PASSWORD"

MYSQL="/usr/bin/mysql"
resulttmp="tmp.$$"

$MYSQL -h "${DBHOST}" -u "${DBUSER}" -p"${DBPASS}" -e "SHOW SLAVE STATUS \G" > $resulttmp

Slave_IO_Running=$(awk '/Slave_IO_Running:/ {print $2}' "$resulttmp")
Slave_SQL_Running=$(awk '/Slave_SQL_Running:/ {print $2}' "$resulttmp")
Last_IO_Error=$(grep 'Last_IO_Error:' "$resulttmp" | sed 's/^ *//g')
Last_SQL_Error=$(grep 'Last_SQL_Error:' "$resulttmp" | sed 's/^ *//g')

date_str=$(date '%Y/%m/%d %H:%M:%S')

if [ "$Slave_IO_Running" = "YES" -a "$Slave_SQL_Running" = "YES" ]; then
  echo "[$date_str] STATUS OK"
else
  echo "[$date_Str] STATUS NG"
  echo "Slave_IO_Running: $Slave_IO_Running"
  echo "Slave_SQL_Running: $Slave_SQL_Running"
  echo "$Last_IO_Error"
  echo "$Last_SQL_Error"

  # ./alert.sh
fi

rm -f "$resulttmp"