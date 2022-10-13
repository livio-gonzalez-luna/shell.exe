#!/bin/bash

file=number_connection-$(date +%d-%m-%Y"%H:%M")
/var/log.auth.log | grep "$USER" | wc -l >> $file
tar -cvf ./$file.tar ./ &&  mv $file.tar Backup

