# Day 10 Challenge

## Files Created
```
devops.txt
notes.txt
project
script.sh
```


## Permission Changes
```
r--r--r--. 1 root root  0 May 29 02:22 devops.txt
-rw-r-----. 1 root root  5 May 29 02:23 notes.txt
drwxr-xr-x. 2 root root  6 May 29 02:30 project
-rwxr-xr-x. 1 root root 20 May 29 02:24 script.sh
```

## Commands Used
```
  348  touch devops.txt
  349  cat > notes.txt <<"EOF"
text
EOF

  350  vim script.sh
  351  ls -l
  352  cat notes.txt
  353  vim script.sh
  354  head -5 /etc/passwd
  355  tail  -5 /etc/passwd
  356  ls -l devops.txt notes.txt script.sh
  357  chmod a=x script.sh
  358  chmod a+x script.sh
  359  chmod a-w devops.txt
  360  chmod 640 notes.txt
  361  mkdir project
  362  chmod 755 project
  363  ls -l
  364  chmod 0644 script.sh
  365  ./script.sh
  366  history | tail -33
```

## What I Learned
- How to change owner, group and permissions.
- How to use vim.
- How to use head and tail command.