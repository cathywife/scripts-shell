#!/bin/bash

#Author:
#Mail: 
#Platform:
#Date:Mon 16 Jan 2017 05:43:51 AM CST

# 方法1
function rename() {

for i in `ls |grep ymc023`:
do
    a=`echo $i|cut -c 1-10`
    mv ${a}_ymc023.txt ${a}_ymc.php
done
}
#方法2
function rename2() {
for i in `ls |grep ymc`:
do
    mv $i ${i%%_*}_ymc0.py
done
}

#方法3
function rename3(){
for i in `ls |grep ymc0`
do
    mv $i `echo -n $i | awk -F '_' '{print $1"_ymc02.html"}'`
done
}
#执行方法
rename3
