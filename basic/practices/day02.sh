#!/usr/bin/env bash


Name=httpd

Num=$(ps -ef | grep $Name | grep -vc grep)

if [ $Num -eq 1 ]; then
    echo " $Name is running"
else 
    echo "$Name is not running"
fi