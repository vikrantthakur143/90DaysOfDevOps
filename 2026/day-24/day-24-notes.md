[root@earth day-23]# cd /tmp/aaa/
[root@earth aaa]# git branch
  feature-1
* feature-2
  master
[root@earth aaa]# git checkout master
Switched to branch 'master'
[root@earth aaa]# git branch -d feature-1
Deleted branch feature-1 (was d598924).
[root@earth aaa]# git branch -d feature-2
Deleted branch feature-2 (was d598924).
[root@earth aaa]# git branch
* master
[root@earth aaa]#
[root@earth aaa]# git branch
* master
[root@earth aaa]# git checkout -b feature-login
Switched to a new branch 'feature-login'
[root@earth aaa]# vim feature-login.php
[root@earth aaa]# git add .
[root@earth aaa]# git commit -m "Created login feature."
[feature-login 0fd7ed8] Created login feature.
 1 file changed, 7 insertions(+)
 create mode 100644 feature-login.php
[root@earth aaa]# git log
commit 0fd7ed8ab1ef248486a08aa77c1e67779628c7d3 (HEAD -> feature-login)
Author: Earth <earth@adm24x7.com>
Date:   Wed Jun 10 19:51:14 2026 +0530

    Created login feature.

commit d598924cc8e957c11541a1fac3ef1f161e0d35f8 (master)
Author: Earth <earth@adm24x7.com>
Date:   Wed Jun 10 19:45:59 2026 +0530

    Day 19
[root@earth aaa]# git branch
* feature-login
  master
[root@earth aaa]# git branch -
fatal: '-' is not a valid branch name
hint: See `man git check-ref-format`
hint: Disable this message with "git config set advice.refSyntax false"
[root@earth aaa]# git branch
* feature-login
  master
[root@earth aaa]# git checkout -
Switched to branch 'master'
[root@earth aaa]# git branch
  feature-login
* master
[root@earth aaa]# ll
total 0
-rw-r--r-- 1 root root 0 Jun 10 19:45 a
[root@earth aaa]# git log
commit d598924cc8e957c11541a1fac3ef1f161e0d35f8 (HEAD -> master)
Author: Earth <earth@adm24x7.com>
Date:   Wed Jun 10 19:45:59 2026 +0530

    Day 19
[root@earth aaa]# git merge
feature-login   HEAD            master
[root@earth aaa]# git merge feature-login
Updating d598924..0fd7ed8
Fast-forward
 feature-login.php | 7 +++++++
 1 file changed, 7 insertions(+)
 create mode 100644 feature-login.php
[root@earth aaa]# git log
commit 0fd7ed8ab1ef248486a08aa77c1e67779628c7d3 (HEAD -> master, feature-login)
Author: Earth <earth@adm24x7.com>
Date:   Wed Jun 10 19:51:14 2026 +0530

    Created login feature.

commit d598924cc8e957c11541a1fac3ef1f161e0d35f8
Author: Earth <earth@adm24x7.com>
Date:   Wed Jun 10 19:45:59 2026 +0530

    Day 19
[root@earth aaa]# ll
total 4
-rw-r--r-- 1 root root  0 Jun 10 19:45 a
-rw-r--r-- 1 root root 41 Jun 10 19:52 feature-login.php
[root@earth aaa]# git branch
  feature-login
* master
[root@earth aaa]# git checkout -b feature-signup
Switched to a new branch 'feature-signup'
[root@earth aaa]# vim feature-login.php
[root@earth aaa]# git add .
[root@earth aaa]# git commit -m "Created login feature. again"
[feature-signup 486c687] Created login feature. again
 1 file changed, 2 insertions(+)
[root@earth aaa]# git checkout master
Switched to branch 'master'
[root@earth aaa]# git merge feature-signup
Updating 0fd7ed8..486c687
Fast-forward
 feature-login.php | 2 ++
 1 file changed, 2 insertions(+)
[root@earth aaa]# ll
total 4
-rw-r--r-- 1 root root  0 Jun 10 19:45 a
-rw-r--r-- 1 root root 73 Jun 10 19:53 feature-login.php
[root@earth aaa]# cat feature-login.php


<?php


echo 'This is login page.';
echo 'This is login page.ddd';

?>
[root@earth aaa]# vim feature-login.php
[root@earth aaa]# git checkout feature-signup
M       feature-login.php
Switched to branch 'feature-signup'
[root@earth aaa]# vim ^C
[root@earth aaa]# git branch
  feature-login
