#!/bin/bash

#Author:
#Mail: 
#Platform:
#Date:Mon 16 Jan 2017 05:43:51 AM CST

function denyip_to_iptables(){
while true
do
    netstat -an | grep ESTAB | awk -F "[ :]+" '{print $6}' | sort | uniq -c > pv.log
    exec<pv.log
    while read line
    do
        pv=`echo $line | awk '{print $1}'`
        ip=`echo $line | awk '{print $2}'`
        if [ $pv -gt 1 ] && [ `iptables -L -n | grep $ip | wc -l` -eq 0 ];then
               echo " iptables -A INPUT -s $ip -j DROP"
        fi
    done
    sleep 180
done
}
denyip_to_iptables
