#!/bin/bash

env | grep ^CRONENV_ | sed 's/^CRONENV_\(.*\)=\(.*\)/export \1="\2"/g' > /root/.cronenv
echo "${CRON_INTERVAL} ${CRON_USER} . /root/.cronenv; ${CRON_COMMAND} >/proc/1/fd/1 2>/proc/1/fd/2" > /etc/crontab
exec /usr/sbin/cron -f
