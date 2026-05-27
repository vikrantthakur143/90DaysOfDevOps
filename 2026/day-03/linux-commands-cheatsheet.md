# Process management
```bash
# check processes
ps auxf

# kill all process related to https
killall https

# kill the process gracefully
kill -15 12345
```


# File system
```bash
# format disk drive
mkfs.ext4 /dev/sda1
mkfs.xfs /dev/sda2

# check status
df -Th
```


# Networking troubleshooting
```bash
# check network interface and ip
ifconfig

# check route
route -n

# dns query
dig google.com -t a +short

# check connectivity
ping google.com
```