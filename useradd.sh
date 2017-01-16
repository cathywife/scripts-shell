#!/bin/bash

#Author:
#Mail: 
#Platform:
#Date:Mon 16 Jan 2017 05:43:51 AM CST

function user_add(){

for i in $(seq -w 15):
do
    useradd -s /bin/bash ymc0$i
    if [ $? == 0 ];then
        echo "ymc0$i create ok."
    fi
    echo $i|md5sum|cut -c 1-10|tee -a passwd.txt|passwd --stdin ymc0$i
done
}

user_add
