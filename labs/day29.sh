#!/bin/bash



awk '{ print $1}' ip.txt | sort | uniq -c | sort -k1 -r| awk  '$1 > 3 {print $1,$2}'