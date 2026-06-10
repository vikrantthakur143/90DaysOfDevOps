A Git branch is a movable pointer to a specific commit that allows you to diverge from the main line of development and work independently without affecting other branches.


 create mode 100644 a
[root@earth aaa]# git branch
* master
[root@earth aaa]# git branch feature-1
[root@earth aaa]# git checkout feature-1
Switched to branch 'feature-1'
[root@earth aaa]# git branch
* feature-1
  master
[root@earth aaa]# git checkout -b feature-2
Switched to a new branch 'feature-2'
[root@earth aaa]# git branch
  feature-1
* feature-2
  master
[root@earth aaa]# git checkout
[root@earth aaa]# git branch
  feature-1
* feature-2
  master
[root@earth aaa]#
