#!/bin/bash
a=$(md5sum /var/www/html/index.html)
for i in 100 200
 do
    b=$(curl http://192.168.4.${i} | md5sum)
    if [ $b == $a ];then
       echo "OK"
    else 
       echo "NO"
    fi 
 done
