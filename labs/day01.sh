#!/usr/bin/env bash


# 阶乘

read -p "请输入要计算的数字的阶乘" num
echo $num
ans=1
for((i=1;i<=num;i++))
do
    ans=$((ans*i))
done
echo $ans
