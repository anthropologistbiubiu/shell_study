#!/bin/bash


IP=$1

if [[ $IP =~ ^[1-9]{1,3}\.[1-9]{1,3}\.[1-9]{1,3}\.[1-9]{1,3}$ ]];then
    Field1=$(echo $1 | cut -d . -f1)
    Field2=$(echo $1 | cut -d . -f2)
    Field3=$(echo $1 | cut -d . -f3)
    Field4=$(echo $1 | cut -d . -f4)
    if [[ $Field1 -le 255 && $Field2 -le 255 && $Field3 -le 255 && $Field4 -le 255 ]];then
        echo "$IP 属于合法IP地址 "
    else    
        echo "$IP 不属于合法IP地址"
    fi
else
        echo "$IP 不属于合法IP地址"
fi




