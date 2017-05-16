#!/bin/bash

#Generate a random time for syncing
#echo "$(($RANDOM%60)) */2 * * * /mirror_archlinux.sh" > /cron
echo "0 */1 * * * root /syncrepo.sh -s >/dev/null 2>&1" >> /etc/crontab

#add it
#crontab /cron

#start services
service cron start
service nginx start

#live forever
tail -f /dev/null

