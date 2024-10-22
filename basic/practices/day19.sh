#!/bin/bash


awk '$6="ESTABLISHED" && $5 ~ /:3306$/ ' $1 | cut -d ":" -f 1 | uniq -c  | sort -nr