#!/bin/bash


# awk 的用法

awk '{ if ($1 > 100) print $1 " is greater than 100"; else print $1 " is not greater than 100" }'

echo -e "0 apple\n2 banana\n3 cherry" | awk '{
    if ($1 > 1) {
        print $2 "s are more than one."
    } else {
        print $2 " is one."
    }
}'