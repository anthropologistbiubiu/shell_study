#!/usr/bin/env bash


# 字符串比较运算符


string1=" "
string2=""

if [ "$string1" = "$string2" ]
then
    echo "string1==string2"
elif [ "$string1" != "$string2" ]
then
    echo "string1 != string2"
fi


if [ -z "$string1" ] && [ -z "$string2"  ]
then
    echo "the length of strings is zero "
elif [ -n "$string1" ] && [ -n "$string2" ]
then
    echo "both of them is not zero"
else
    echo " both of them is  zero"
fi

