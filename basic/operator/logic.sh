#!/usr/bin/env bash



# && 运算符
a=3
b=1
if (( $a > 1 )) && [ $b -lt 2 ]
then
    echo "a > 1 && b > 2"
elif [ $a -gt 1 ] || [ $b -le 2 ]
then
    echo " a > 1 || b >= 2 "
elif (( a == 1)) && (( b== 2))
then
    echo "a==1 && b==2"
elif [ $a -gt 1 ] && [ $b -lt 2 ]
then
    echo "a > 1 && b >2"
elif [ $a -ge 1 ] || [ $b -gt 2 ] 
then
    echo "a >=1 && b >2" 
else 
    echo "else"
fi


# ||运算符


# !运算符



