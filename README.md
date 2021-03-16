# techtest

Image Name: liaqat-test
When launching your EC2 instance using the AMI you will need to allow 22000 and 19999 in your inbound SG. 

sshd: Port 22000, Permitrootlogin no. 
additional config MaxAuthTries(To counter brute force logins).  
Sudo user: liaqat

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

