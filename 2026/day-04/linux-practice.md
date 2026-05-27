ps auxf | grep -i sshd
meta        5404  0.0  0.1   6376  2244 pts/3    S+   02:34   0:00  \_ grep --color=auto -i sshd


systemctl status sshd
● sshd.service - OpenSSH server daemon
     Loaded: loaded (/usr/lib/systemd/system/sshd.service; enabled; preset: enabled)
     Active: active (running) since Wed 2026-05-27 13:41:02 IST; 12h ago
 Invocation: 8af9e4bc209d49abae7135e12cfd4e30
       Docs: man:sshd(8)
             man:sshd_config(5)
   Main PID: 1364
      Tasks: 1 (limit: 11964)
     Memory: 8.3M (peak: 14.1M)
        CPU: 87ms
     CGroup: /system.slice/sshd.service
             └─1364 "sshd: /usr/sbin/sshd -D [listener] 0 of 10-100 startups"

May 27 13:41:02 host.example.com sshd[1364]: Server listening on :: port 22.
May 27 13:41:02 host.example.com systemd[1]: Started sshd.service - OpenSSH server daemon.
May 27 14:17:19 host.example.com sshd-session[1614]: Accepted publickey for meta from 192.168.100.1 port>
May 27 14:17:19 host.example.com sshd-session[1614]: pam_unix(sshd:session): session opened for user met>
May 27 14:17:22 host.example.com sshd-session[1612]: Accepted publickey for meta from 192.168.100.1 port>
May 27 14:17:22 host.example.com sshd-session[1612]: pam_unix(sshd:session): session opened for user met>
May 27 23:17:19 host.example.com sshd-session[3932]: Accepted publickey for meta from 192.168.100.1 port>
May 27 23:17:19 host.example.com sshd-session[3932]: pam_unix(sshd:session): session opened for user met>
May 27 23:17:23 host.example.com sshd-session[3930]: Accepted publickey for meta from 192.168.100.1 port>
May 27 23:17:23 host.example.com sshd-session[3930]: pam_unix(sshd:session): session opened for user met>


sudo cat /var/log/messages|grep -i ssh | tail -5
May 27 13:40:59 host systemd[1]: sshd-keygen@ed25519.service - OpenSSH ed25519 Server Key Generation was skipped because of an unmet condition check (ConditionPathExists=!/run/systemd/generator.early/multi-user.target.wants/cloud-init.target).
May 27 13:40:59 host systemd[1]: sshd-keygen@rsa.service - OpenSSH rsa Server Key Generation was skipped because of an unmet condition check (ConditionPathExists=!/run/systemd/generator.early/multi-user.target.wants/cloud-init.target).
May 27 13:40:59 host systemd[1]: Reached target sshd-keygen.target.
May 27 13:41:02 host systemd[1]: Starting sshd.service - OpenSSH server daemon...
May 27 13:41:02 host systemd[1]: Started sshd.service - OpenSSH server daemon.
