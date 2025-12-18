#!/bin/bash



result=$(grep -E '\[23/Apr/2020:(20|21|22|23)' ip.txt | awk '{ print $1}' | sort | uniq | wc -l) 
echo "$result"