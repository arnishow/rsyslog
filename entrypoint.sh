#!/bin/sh

if [ -n "$DB" ] && [ -n "$DB_NAME" ] && [ -n "$DB_USER" ] && [ -n "$DB_PWD" ]; then
  echo "*.* :ommysql:$DB,$DB_NAME,$DB_USER,$DB_PWD" >> /etc/rsyslog.conf
fi

exec rsyslogd -n