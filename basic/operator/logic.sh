#!/usr/bin/env bash



# && || !运算符
a=-2
b=5
if (( $a > 1 )) && [ $b -lt 2 ]
then
    echo "a > 1 && b < 2"
elif [ $a -gt 1 ] || [ $b -le 2 ]
then
    echo " a > 1 || b <= 2 "
elif (( a == 1)) && (( b== 2))
then
    echo "a==1 && b==2"
elif [ $a -gt 1 ] && [ $b -lt 2 ]
then
    echo "a > 1 && b <2 "
elif ! [ $a -gt 0 ] && [ $b -gt 0 ] 
then
    echo "a < 0 && b < 2" 
else 
    echo "else"
fi


# ||运算符


# !运算符



