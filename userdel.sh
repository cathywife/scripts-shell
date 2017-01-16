#!/bin/bash

#Author:ymc023
#Mail: 
#Platform:
#Date:Mon 16 Jan 2017 05:43:51 AM CST

function user_del(){

for i in $(seq -w 15)
do
    userdel -r  ymc0$i
    if [ $? == 0 ];then
        echo "ymc0$i delete ok."
    fi
done
}

user_del
