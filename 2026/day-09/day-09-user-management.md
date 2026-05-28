# Day 09 Challenge

## Users & Groups Created
- Users: tokyo, berlin, professor, nairobi
- Groups: developers, admins, project-team


## Group Assignments
```
tokyo: developers, project-team
berlin: developers, admins
professor: admins
nairobi: project-team
```


## Directories Created
```
drwxrwxr-x. 2 root developers   51 May 29 01:49 dev-project
drwxrwxr-x. 2 root project-team 30 May 29 01:51 team-workspace
```


## Commands Used
```
  310  systemctl status nginx
  311  systemctl restart nginx
  312  systemctl status nginx
  313  cat /var/log/nginx/access.log
  314  useradd -m tokyo
  315  useradd -m berlin
  316  useradd -m professor
  317  tail -3 /etc/passwd
  318  ls -ltr /home/ | tail -3
  319  groupadd developers
  320  admins
  321  groupadd admins
  322  tail -2 /etc/group
  323  usermod -G developers  tokyo
  324  usermod -G developers,admins berlin
  325  usermod -G admins professor
  326  mkdir /opt/dev-project
  327  chgrp developers  /opt/dev-project
  328  chmod 775 /opt/dev-project
  329  ls -ld /opt/dev-project
  330  su - tokyo
  331  su - berlin
  332  useradd -m nairobi
  333  groupadd project-team
  334  usermod -G project-team nairobi
  335  usermod -G project-team tokyo
  336  mkdir /opt/team-workspace
  337  chgrp project-team /opt/team-workspace/
  338  chmod 775 /opt/team-workspace/
  339  su - nairobi
  340  ls -l /opt/team-workspace/
  341  ls -l /opt/dev-project/
  342  ll /opt/
  343  history | tail -55
```


## What I Learned
```
1. How to create user.
2. How to create group.
3. Add a user to group.
4. change owner, group and set permissions to file and directory.
5. switch user.
```
