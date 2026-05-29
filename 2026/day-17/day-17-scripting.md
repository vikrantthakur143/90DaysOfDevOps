```
[root@rocky9 script]# vim for_loop.sh
[root@rocky9 script]# cat  for_loop.sh
#!/bin/bash

for fruit in apple mango banana orange grapes; do
        echo $fruit
done
[root@rocky9 script]# bash   for_loop.sh
apple
mango
banana
orange
grapes
[root@rocky9 script]#
[root@rocky9 script]#
[root@rocky9 script]# vim count.sh
[root@rocky9 script]# cat  count.sh
for count in {1..10}; do
        echo $count;
done
[root@rocky9 script]# bash   count.sh
1
2
3
4
5
6
7
8
9
10
[root@rocky9 script]#
[root@rocky9 script]#
[root@rocky9 script]# vim countdown.sh
[root@rocky9 script]# cat  countdown.sh
#!/bin/bash


count=5

while [[ $count -gt 0 ]]; do
        print $count
        ((count--))
done
[root@rocky9 script]# bash  countdown.sh
countdown.sh: line 7: print: command not found
countdown.sh: line 7: print: command not found
countdown.sh: line 7: print: command not found
countdown.sh: line 7: print: command not found
countdown.sh: line 7: print: command not found
[root@rocky9 script]# vim countdown.sh
[root@rocky9 script]# bash  countdown.sh
countdown.sh: line 7: print: command not found
countdown.sh: line 7: print: command not found
countdown.sh: line 7: print: command not found
countdown.sh: line 7: print: command not found
countdown.sh: line 7: print: command not found
[root@rocky9 script]# vim countdown.sh
[root@rocky9 script]# bash  countdown.sh
5
4
3
2
1

```