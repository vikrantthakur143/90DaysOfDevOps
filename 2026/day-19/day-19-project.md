bash -x  log_rotate.sh
+ bkup_path=/media/logbackup/
+ mkdir -p /media/logbackup/
++ date +%s
+ find /var/log/ -mtime +7 -name '*.log' -exec tar -zcf /media/logbackup//1781085276.tar.gz '{}' +
tar: Removing leading `/' from member names
tar: Removing leading `/' from hard link targets
+ find /media/logbackup/ -mtime +30 -name '*.tar.gz' -exec /bin/rm -fv '{}' +


ll /media/logbackup/
total 8
-rw-r--r-- 1 root root 523 Jun 10 15:24 1781085270.tar.gz
-rw-r--r-- 1 root root 523 Jun 10 15:24 1781085276.tar.gz
