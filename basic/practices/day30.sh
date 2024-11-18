#!/bin/bash



grep -nir "ESTABLISHED" netstate.txt | awk '{print $4}' | cut  -d ':' -f 1 | sort -nr | uniq -c  | 
awk  '{print$1,$2}'