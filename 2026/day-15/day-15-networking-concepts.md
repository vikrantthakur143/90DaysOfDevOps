# Network

## Task 1: DNS – How Names Become IPs

### 1 Explain in 3–4 lines: what happens when you type google.com in a browser?
The browser checks Google.com's IP in its cache. if not exist in the browser cache, then send a query to the system's hosts file.
If the record does not exist in the hosts file, then send a query to the DNS server.


### 2 DNS Record Types
- A      IP v4 record
- AAAA   IP v6 record
- CNAME  Aliash record
- MX     Mail exchange record
- NS     Name Server Record

### Run: dig google.com — identify the A record and TTL from the output
```
; <<>> DiG 9.18.33 <<>> google.com
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 53641
;; flags: qr rd ra; QUERY: 1, ANSWER: 6, AUTHORITY: 0, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 512
;; QUESTION SECTION:
;google.com.                    IN      A

;; ANSWER SECTION:
google.com.             193     IN      A       142.250.134.113
google.com.             193     IN      A       142.250.134.100
google.com.             193     IN      A       142.250.134.102
google.com.             193     IN      A       142.250.134.101
google.com.             193     IN      A       142.250.134.138
google.com.             193     IN      A       142.250.134.139

;; Query time: 0 msec
;; SERVER: 8.8.8.8#53(8.8.8.8) (UDP)
;; WHEN: Sat May 30 02:58:14 IST 2026
;; MSG SIZE  rcvd: 135
```




## Task 2: IP Addressing




## Task 3: CIDR & Subnetting
| CIDR | Subnet Mask   | Total IPs   | Usable Hosts    |
|------|---------------|-------------|-----------------|
| /24  | 255.255.255.0 | 256         | 256-2           |
| /16  | 255.255.0.0   | 256*256     | (256*256)-2     |
| /28  | 255.0.0.0     | 256*256*256 | (256*256*256)-2 |


## Task 4: Ports – The Doors to Services
| Port | Service |
|------|---------|
| 22   | SSH     |
| 80   | HTTP    |
| 443  | HTTPS   |
| 53   | DNS     |
| 3306 | MYSQL   |
| 6379 | RADIS   |
| 27017| MONGODB |