```
[root@rocky9 ~]# touch hello.sh
[root@rocky9 ~]# vim hello.sh
[root@rocky9 ~]# chmod +x hello.sh
[root@rocky9 ~]# ./hello.sh
Hello, DevOps!
[root@rocky9 ~]#
[root@rocky9 ~]# vim variables.sh
[root@rocky9 ~]# bash variables.sh
Hello, I am VIK and I am a ADMIN
[root@rocky9 ~]# vim file_check.sh
[root@rocky9 ~]# bash  file_check.sh /etc/passwd
/etc/passwd file exist.
[root@rocky9 ~]# bash  file_check.sh /etc/passwd_no_file
/etc/passwd_no_file file not exist.
```