# techtest

Image Name: liaqat-test
sshd: Port 22000, Permitrootlogin no 
additional config MaxAuthTries(To counter brute force logins).  

Diskspace Script: /root/diskspace.sh
Log: /var/log/freespace
Logrotate config:
/var/log/freespace{
    su root root
    hourly
    rotate 10
    compress
    create 
}

