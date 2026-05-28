# Day 11 Challenge

## Files & Directories Created
```
devops-file.txt
team-notes.txt
project-config.yaml
app-logs
heist-project
heist-project/vault
heist-project/vault/gold.txt
heist-project/plans
heist-project/plans/strategy.conf
bank-heist
bank-heist/access-codes.txt
bank-heist/blueprints.pdf
bank-heist/escape-plan.txt
```


## Ownership Changes
```
-r--r--r--. 1 root root  0 May 29 02:22 devops.txt
-rw-r-----. 1 root root  5 May 29 02:23 notes.txt
drwxr-xr-x. 2 root root  6 May 29 02:30 project
-rw-r--r--. 1 root root 20 May 29 02:24 script.sh
[root@rocky9 task]# cd
[root@rocky9 ~]#
[root@rocky9 ~]# ls -l
total 4
-rw-r--r--. 1 root root 272 May 28 21:04 1
drwx------. 2 root root   6 May 28 21:15 Mail
drwxr-xr-x. 3 root root  73 May 29 02:30 task
[root@rocky9 ~]# /bin/rm -rf 1
[root@rocky9 ~]#
[root@rocky9 ~]# ls -l
total 0
drwx------. 2 root root  6 May 28 21:15 Mail
drwxr-xr-x. 3 root root 73 May 29 02:30 task
[root@rocky9 ~]# touch devops-file.txt
[root@rocky9 ~]# ls -l devops-file.txt
-rw-r--r--. 1 root root 0 May 29 02:39 devops-file.txt
[root@rocky9 ~]# chown tokyo  devops-file.txt
[root@rocky9 ~]# chown berlin  devops-file.txt
[root@rocky9 ~]# ls -l devops-file.txt
-rw-r--r--. 1 berlin root 0 May 29 02:39 devops-file.txt
[root@rocky9 ~]# touch team-notes.txt
[root@rocky9 ~]# ls -l team-notes.txt
-rw-r--r--. 1 root root 0 May 29 02:40 team-notes.txt
[root@rocky9 ~]# sudo groupadd heist-team
[root@rocky9 ~]# chgrp heist-team team-notes.txt
[root@rocky9 ~]# ls -l team-notes.txt
-rw-r--r--. 1 root heist-team 0 May 29 02:40 team-notes.txt
[root@rocky9 ~]# touch project-config.yaml
[root@rocky9 ~]# chown professor:heist-team project-config.yaml
[root@rocky9 ~]# mkdir app-logs/
[root@rocky9 ~]# chown berlin:heist-team project-config.yaml
[root@rocky9 ~]# chown berlin:heist-team app-logs/
[root@rocky9 ~]# chown professor:heist-team project-config.yaml
[root@rocky9 ~]# mkdir -p heist-project/vault
mkdir -p heist-project/plans
touch heist-project/vault/gold.txt
touch heist-project/plans/strategy.conf
[root@rocky9 ~]# sudo groupadd planners

[root@rocky9 ~]# chown professor:planners -R heist-project/
[root@rocky9 ~]# ls -lR heist-project/
heist-project/:
total 0
drwxr-xr-x. 2 professor planners 27 May 29 02:44 plans
drwxr-xr-x. 2 professor planners 22 May 29 02:44 vault

heist-project/plans:
total 0
-rw-r--r--. 1 professor planners 0 May 29 02:44 strategy.conf

heist-project/vault:
total 0
-rw-r--r--. 1 professor planners 0 May 29 02:44 gold.txt
[root@rocky9 ~]# groupadd vault-team
[root@rocky9 ~]# groupadd tech-team
[root@rocky9 ~]# mkdir bank-heist/

[root@rocky9 ~]# touch bank-heist/access-codes.txt
touch bank-heist/blueprints.pdf
touch bank-heist/escape-plan.txt
[root@rocky9 ~]# chown tokyo:vault-team bank-heist/access-codes.txt
[root@rocky9 ~]# chown berlin:tech-team touch bank-heist/blueprints.pdf
chown: cannot access 'touch': No such file or directory
[root@rocky9 ~]# chown berlin:tech-team bank-heist/blueprints.pdf
[root@rocky9 ~]# chown nairobi:vault-team bank-heist/escape-plan.txt
[root@rocky9 ~]# ls -l bank-heist/

total 0
-rw-r--r--. 1 tokyo   vault-team 0 May 29 02:45 access-codes.txt
-rw-r--r--. 1 berlin  tech-team  0 May 29 02:45 blueprints.pdf
-rw-r--r--. 1 nairobi vault-team 0 May 29 02:45 escape-plan.txt
```

## Commands Used
```
  371  ls -l
  372  touch devops-file.txt
  373  ls -l devops-file.txt
  374  chown tokyo  devops-file.txt
  375  chown berlin  devops-file.txt
  376  ls -l devops-file.txt
  377  touch team-notes.txt
  378  ls -l team-notes.txt
  379  sudo groupadd heist-team
  380  chgrp heist-team team-notes.txt
  381  ls -l team-notes.txt
  382  touch project-config.yaml
  383  chown professor:heist-team project-config.yaml
  384  mkdir app-logs/
  385  chown berlin:heist-team project-config.yaml
  386  chown berlin:heist-team app-logs/
  387  chown professor:heist-team project-config.yaml
  388  mkdir -p heist-project/vault
  389  mkdir -p heist-project/plans
  390  touch heist-project/vault/gold.txt
  391  touch heist-project/plans/strategy.conf
  392  sudo groupadd planners
  393  chown professor:planners -R heist-project/
  394  ls -lR heist-project/
  395  groupadd vault-team
  396  groupadd tech-team
  397  mkdir bank-heist/
  398  touch bank-heist/access-codes.txt
  399  touch bank-heist/blueprints.pdf
  400  touch bank-heist/escape-plan.txt
  401  chown tokyo:vault-team bank-heist/access-codes.txt
  402  chown berlin:tech-team touch bank-heist/blueprints.pdf
  403  chown berlin:tech-team bank-heist/blueprints.pdf
  404  chown nairobi:vault-team bank-heist/escape-plan.txt
  405  ls -l bank-heist/
  406  history | tail -33
```


## What I Learned
- How to change ownership
- Change file group
- Understand ls -l output in detail.