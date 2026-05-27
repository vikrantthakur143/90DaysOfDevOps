```bash
uname -a
Linux host.example.com 6.12.0-124.20.1.el10_1.x86_64 #1 SMP PREEMPT_DYNAMIC Tue Dec  9 05:04:01 EST 2025 x86_64 GNU/Linux
```

```bash
cat /etc/os-release
NAME="AlmaLinux"
VERSION="10.1 (Heliotrope Lion)"
ID="almalinux"
ID_LIKE="rhel centos fedora"
VERSION_ID="10.1"
PLATFORM_ID="platform:el10"
PRETTY_NAME="AlmaLinux 10.1 (Heliotrope Lion)"
ANSI_COLOR="0;34"
LOGO="fedora-logo-icon"
CPE_NAME="cpe:/o:almalinux:almalinux:10.1"
HOME_URL="https://almalinux.org/"
DOCUMENTATION_URL="https://wiki.almalinux.org/"
VENDOR_NAME="AlmaLinux"
VENDOR_URL="https://almalinux.org/"
BUG_REPORT_URL="https://bugs.almalinux.org/"

ALMALINUX_MANTISBT_PROJECT="AlmaLinux-10"
ALMALINUX_MANTISBT_PROJECT_VERSION="10.1"
REDHAT_SUPPORT_PRODUCT="AlmaLinux"
REDHAT_SUPPORT_PRODUCT_VERSION="10.1"
SUPPORT_END=2035-06-01
```

```bash
mkdir /tmp/runbook-demo; cp /etc/hosts /tmp/runbook-demo/hosts-copy && ls -l /tmp/runbook-demo
total 12
-rw-r--r-- 1 root root 12071 May 28 02:42 hosts-copy
```

```bash
top
top - 02:43:12 up  5:10,  3 users,  load average: 0.54, 0.19, 0.12
Tasks: 238 total,   1 running, 237 sleeping,   0 stopped,   0 zombie
%Cpu(s):  0.0 us,  0.2 sy,  0.0 ni, 99.8 id,  0.0 wa,  0.0 hi,  0.0 si,  0.0 st
MiB Mem :   1929.7 total,   1161.1 free,    528.9 used,    399.7 buff/cache
MiB Swap:   1024.0 total,   1024.0 free,      0.0 used.   1400.8 avail Mem

    PID USER      PR  NI    VIRT    RES    SHR S  %CPU  %MEM     TIME+ COMMAND
    881 root      20   0  315620   8744   6856 S   0.3   0.4   0:13.52 vmtoolsd
      1 root      20   0   22844  14080   9508 S   0.0   0.7   0:19.87 systemd
      2 root      20   0       0      0      0 S   0.0   0.0   0:00.03 kthreadd
      3 root      20   0       0      0      0 S   0.0   0.0   0:00.00 pool_workqueue_release
      4 root       0 -20       0      0      0 I   0.0   0.0   0:00.00 kworker/R-rcu_gp
      5 root       0 -20       0      0      0 I   0.0   0.0   0:00.00 kworker/R-sync_wq
      6 root       0 -20       0      0      0 I   0.0   0.0   0:00.00 kworker/R-slub_flushwq
      7 root       0 -20       0      0      0 I   0.0   0.0   0:00.00 kworker/R-netns
     10 root       0 -20       0      0      0 I   0.0   0.0   0:00.00 kworker/0:0H-events_highpri
     12 root       0 -20       0      0      0 I   0.0   0.0   0:00.00 kworker/R-mm_percpu_wq
     14 root      20   0       0      0      0 I   0.0   0.0   0:00.00 rcu_tasks_kthread
     15 root      20   0       0      0      0 I   0.0   0.0   0:00.00 rcu_tasks_rude_kthread
     16 root      20   0       0      0      0 I   0.0   0.0   0:00.00 rcu_tasks_trace_kthread
     17 root      20   0       0      0      0 S   0.0   0.0   0:00.27 ksoftirqd/0
     18 root      20   0       0      0      0 I   0.0   0.0   0:00.82 rcu_preempt
     19 root      20   0       0      0      0 S   0.0   0.0   0:00.00 rcu_exp_par_gp_kthread_worker/1
     20 root      20   0       0      0      0 S   0.0   0.0   0:00.00 rcu_exp_gp_kthread_worker
     21 root      rt   0       0      0      0 S   0.0   0.0   0:00.03 migration/0
     22 root     -51   0       0      0      0 S   0.0   0.0   0:00.00 idle_inject/0
     23 root      20   0       0      0      0 S   0.0   0.0   0:00.00 cpuhp/0
     24 root      20   0       0      0      0 S   0.0   0.0   0:00.00 cpuhp/1
     25 root     -51   0       0      0      0 S   0.0   0.0   0:00.00 idle_inject/1
     26 root      rt   0       0      0      0 S   0.0   0.0   0:00.29 migration/1
```

```bash
df -h
Filesystem      Size  Used Avail Use% Mounted on
/dev/nvme0n1p4   11G  8.1G  2.7G  75% /
devtmpfs        936M     0  936M   0% /dev
tmpfs           965M     0  965M   0% /dev/shm
tmpfs           386M   11M  376M   3% /run
tmpfs           1.0M     0  1.0M   0% /run/credentials/systemd-journald.service
typfs           2.0G   12K  2.0G   1% /tmp
/dev/nvme0n1p3  960M  212M  749M  23% /boot
/dev/nvme0n1p2  200M  8.5M  192M   5% /boot/efi
tmpfs           1.0M     0  1.0M   0% /run/credentials/getty@tty1.service
tmpfs           1.0M     0  1.0M   0% /run/credentials/serial-getty@ttyS0.service
tmpfs           193M   12K  193M   1% /run/user/1000
```

```bash
ss -tulpn
Netid State   Recv-Q  Send-Q     Local Address:Port   Peer Address:Port Process
udp   UNCONN  0       0                0.0.0.0:123         0.0.0.0:*     users:(("chronyd",pid=893,fd=7))
udp   UNCONN  0       0              127.0.0.1:323         0.0.0.0:*     users:(("chronyd",pid=893,fd=5))
udp   UNCONN  0       0                  [::1]:323            [::]:*     users:(("chronyd",pid=893,fd=6))
tcp   LISTEN  0       128              0.0.0.0:22          0.0.0.0:*     users:(("sshd",pid=1364,fd=7))
tcp   LISTEN  0       32                     *:21                *:*     users:(("vsftpd",pid=1368,fd=3))
tcp   LISTEN  0       128                 [::]:22             [::]:*     users:(("sshd",pid=1364,fd=8))
```

```bash
netstat -tulpn
Active Internet connections (only servers)
Proto Recv-Q Send-Q Local Address           Foreign Address         State       PID/Program name
tcp        0      0 0.0.0.0:22              0.0.0.0:*               LISTEN      1364/sshd: /usr/sbi
tcp6       0      0 :::21                   :::*                    LISTEN      1368/vsftpd
tcp6       0      0 :::22                   :::*                    LISTEN      1364/sshd: /usr/sbi
udp        0      0 0.0.0.0:123             0.0.0.0:*                           893/chronyd
udp        0      0 127.0.0.1:323           0.0.0.0:*                           893/chronyd
udp6       0      0 ::1:323                 :::*                                893/chronyd
```

```bash
ping google.com -c 4
PING google.com (172.217.24.78) 56(84) bytes of data.
64 bytes from sin10s06-in-f14.1e100.net (172.217.24.78): icmp_seq=1 ttl=112 time=11.5 ms
64 bytes from sin10s06-in-f14.1e100.net (172.217.24.78): icmp_seq=2 ttl=112 time=10.8 ms
64 bytes from sin10s06-in-f14.1e100.net (172.217.24.78): icmp_seq=3 ttl=112 time=9.44 ms
64 bytes from sin10s06-in-f14.1e100.net (172.217.24.78): icmp_seq=4 ttl=112 time=10.1 ms

--- google.com ping statistics ---
4 packets transmitted, 4 received, 0% packet loss, time 3032ms
rtt min/avg/max/mdev = 9.443/10.469/11.500/0.770 ms
```

```bash
journalctl -u sshd -n 10
May 27 13:41:02 host.example.com sshd[1364]: Server listening on :: port 22.
May 27 13:41:02 host.example.com systemd[1]: Started sshd.service - OpenSSH server daemon.
May 27 14:17:19 host.example.com sshd-session[1614]: Accepted publickey for meta from 192.168.100.1 port 15655 ssh2: RSA SHA256:Gg0daEBLe6iSLPlRtgAJF/1eOl8MYsFUSnvMI/NpWxQ
May 27 14:17:19 host.example.com sshd-session[1614]: pam_unix(sshd:session): session opened for user meta(uid=1000) by meta(uid=0)
May 27 14:17:22 host.example.com sshd-session[1612]: Accepted publickey for meta from 192.168.100.1 port 15654 ssh2: RSA SHA256:Gg0daEBLe6iSLPlRtgAJF/1eOl8MYsFUSnvMI/NpWxQ
May 27 14:17:22 host.example.com sshd-session[1612]: pam_unix(sshd:session): session opened for user meta(uid=1000) by meta(uid=0)
May 27 23:17:19 host.example.com sshd-session[3932]: Accepted publickey for meta from 192.168.100.1 port 55532 ssh2: RSA SHA256:Gg0daEBLe6iSLPlRtgAJF/1eOl8MYsFUSnvMI/NpWxQ
May 27 23:17:19 host.example.com sshd-session[3932]: pam_unix(sshd:session): session opened for user meta(uid=1000) by meta(uid=0)
May 27 23:17:23 host.example.com sshd-session[3930]: Accepted publickey for meta from 192.168.100.1 port 1504 ssh2: RSA SHA256:Gg0daEBLe6iSLPlRtgAJF/1eOl8MYsFUSnvMI/NpWxQ
May 27 23:17:23 host.example.com sshd-session[3930]: pam_unix(sshd:session): session opened for user meta(uid=1000) by meta(uid=0)
```

