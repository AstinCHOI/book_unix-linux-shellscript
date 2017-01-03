#!/bin/sh

# Use: mysqldump, date, gzip, find, xargs

DBHOST="192.168.11.5"
DBUSER="backup"
DBPASS="PASSWORD"
DBNAME="asciineo"

BACKUP_DIR="/home/astin/backup"
BACKUP_ROTATE=3
MYSQLDUMP="/usr/bin/mysqldump"

# backup directory
if [ ! -d "$BACKUP_DIR" ]; then
  echo "There is no backup directory: $BACKUP_DIR" >&2
  exit 1
fi

today=$(date '%Y%m%d')

$MYSQLDUMP -h "${DBHOST}" -u "${DBUSER}" -P"${DBPASS}" "${DBNAME}" > "${BACKUP_DIR}/${DBNAME}-${today}.dump"

if [ $? -eq 0 ]; then
  gzip "${BACKUP_DIR}/${DBNAME}-${today}.dump"

  # delete old backup
  find "$BACKUP_DIR" -name "${DBNAME}-*.dump.gz" -mtime +${BACKUP_ROTATE} | xargs rm -f
else
  echo "writing backup fail: ${BACKUP_DIR}/${DBNAME}-${today}.dump"
  exit 2
fi