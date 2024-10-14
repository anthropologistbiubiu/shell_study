#!/bin/bash
#判断主机是否存在





HOSTS="103.235.47.188 103.235.46.96"

for HOST in $HOSTS
do
    if ping -c 1 $HOST > /dev/null;then
        echo "$HOST exist"
    else
        echo "$HOST not exists"
    fi
done