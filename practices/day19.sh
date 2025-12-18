#!/bin/bash


# awk '$6="ESTABLISHED" && $5 ~ /:3306$/ ' $1 | cut -d ":" -f 1 | sort | uniq -c  | sort -nr | awk '{print $1 " " $5}'
#awk '$6="ESTABLISHED" && $5 ~ /:3306$/ ' $1 | cut -d ":" -f 1 | sort | uniq -c  | sort -nr 

#awk '$6="ESTABLISHED" && $5 ~ /:3306$/ ' $1 | cut -d ":" -f 1 
awk '$6="ESTABLISHED" && $5 ~ /:3306$/ ' $1  | cut -d ":" -f 2 | cut -d " " -f 2 | sort | uniq -c | sort -nr  | awk '{print$1 " "$2}'