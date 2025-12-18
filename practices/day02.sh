#!/usr/bin/env bash


Name=httpd

Num=$(ps -ef | grep $Name | grep -vc grep)
# grep -v grep 表示从结果当中过滤掉包含 grep 的记录
# grep -c 表示统计行数

if [ $Num -eq 1 ];then 
    echo "$Name is runnning"
else
    echo "$Name is not running"
fi
