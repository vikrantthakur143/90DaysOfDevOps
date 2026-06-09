

bkup_path="/media/logbackup/"
mkdir -p $bkup_path

find /var/log/ -mtime +7 -name '*.log' -exec tar -zcf $bkup_path/$(date +%s).tar.gz  '{}' \+


find $bkup_path -mtime +30 -name '*.tar.gz' -exec /bin/rm -fv '{}' \+  