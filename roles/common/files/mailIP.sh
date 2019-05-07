#!/bin/bash

HN=$(hostname)
cp ~/mail.txt ~/newmail.txt

IP0=$(/usr/sbin/ifconfig eth0 | grep "inet " | awk '{ print $2 }')
if [[ "$IP0" ]]; then
  echo "Het ethernet (eth0) IP adres van $HN is $IP0" >> ~/newmail.txt
fi

IP1=$(/usr/sbin/ifconfig eth1 | grep "inet " | awk '{ print $2 }')
if [[ "$IP1" ]]; then
  echo "Het ethernet (eth1) IP adres van $HN is $IP1" >> ~/newmail.txt
fi

IP2=$(/usr/sbin/ifconfig wlan0 | grep "inet " | awk '{ print $2 }')
if [[ "$IP2" ]]; then
  echo "Het wifi (wlan0) IP adres van $HN is $IP2" >> ~/newmail.txt
fi

/usr/sbin/sendmail -vt {{ ssmtp_mail_to }} < ~/newmail.txt

