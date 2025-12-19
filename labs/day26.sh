#!/bin/bash


 while  read -r line; do
    #echo "$line"
    echo "$line" | grep -viwE '\b.*[Bb].*\b'
done < filter.txt  
