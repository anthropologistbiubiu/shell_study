#!/bin/bash



grep -nir "tcp" netstate.txt | awk '{print $5}' | cut  -d ':' -f 1 | sort | uniq -c  | sort -k1r | awk '{print$1,$2}'  