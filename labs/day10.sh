#!/bin/bash


read -p "请输入软件名" software 

if [ -z "$software" ];then
    echo "输入不合法"
    exit 1
fi

if brew list --formula | grep  -q "$software";then
    echo "$software 软件已经安装"
else
    echo "$software 软件没有安装"
fi


