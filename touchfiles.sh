#!/bin/bash

#Author:ymc023
#Mail: 
#Platform:
#Date:Mon 16 Jan 2017 05:30:29 AM CST

function touchfiles(){
for i in `seq 10`:
do
    touch `echo -n $RANDOM|md5sum|cut -c 1-10|tr '0-9' 'a-j'`_ymc023.txt
done

}
touchfiles
