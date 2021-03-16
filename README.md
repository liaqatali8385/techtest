# techtest

TF code launches an AMI(ubuntu 20.04) on an EC2 instance. I have configured the inbound and outbound security group to allow all as this setup was used to at the beginning. Also specified they key pair used to access the instance which i created manually through the console.


Image Name: liaqat-test
When launching your EC2 instance using the AMI you will need to allow 22000 and 19999 in your inbound SG. Login as ubuntu. 

sshd: Port 22000, Permitrootlogin no. 
additional config MaxAuthTries(To counter brute force logins).  
Sudo user: liaqat
User liaqat may run the following commands on :
    (ALL : ALL) ALL

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

/etc/netdata/netdata.conf
Modify and include the Internal configured IP of your EC2 Instance. 

