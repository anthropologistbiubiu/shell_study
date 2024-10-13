#!/bin/bash


if [ $# -eq 0 ];then
    echo "未输入任何参数，请输入参数"
    echo "用法：$0 [文件名 | 目录名]"
    exit 1
fi

echo $1

if [ -f $1 ];then
    echo "该文件存在"
    ls -alh $1
elif [ -d $1 ];then
    echo "该目录存在"
    ls -alh $1
fi