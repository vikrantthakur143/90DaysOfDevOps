# Explain process states (running, sleeping, zombie, etc.)
| State | Symbol | Description
| -------- | -------- | -------- |
| Running | R | Process is currently executing or in run queue
| Sleeping | S | Waiting for an event/resource (interruptible)
| Disk Sleep | D | Waiting for I/O (uninterruptible)
| Stopped | T | Suspended by signal (e.g., SIGSTOP)
| Zombie | Z | Terminated but not reaped by parent
| Dead | X | About to be cleaned up (rarely seen)





# List 5 commands you would use daily
```bash
# Check Ram status
free -m

# Check file or directory size.
du -sch *

# check mounted volumes with details.
df -Th

# create empty file
touch myfile.txt

# Monitory resources
top -c
```
