#!/bin/bash
line_number=0
total=0
while read -r line; do
    count=$(echo "$line" | grep -o "[1-5]" | wc -l)
    line_number=$((line_number+1))
    total=$((count+total))
    echo "line$line_number number: $count"
    # body
done < remove.txt

echo "sum is $total"