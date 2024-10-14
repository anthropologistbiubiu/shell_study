#!/bin/bash
#判断主机是否存在





HOSTS="103.235.47.188 103.235.46.96 127.0.0.1 123.123.123.123"

for HOST in $HOSTS
do
    NUM=1
    while [ $NUM -le 3 ]; do
        if ping -c 1 $HOST > /dev/null;then
            echo "$HOST exist"
            break
        else
            echo "$HOST not exists"
            NUM=$((NUM+1))
        fi

        if [ $NUM -gt 3 ]; then
            echo "$HOST cant reach"
        fi
        
    done
    
done