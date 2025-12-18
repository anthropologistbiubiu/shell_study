#!/bin/bash



#declare -A data

# 读取文件并将数据存储到数组中
DELIMITER=$'\x1F'
while  IFS=":" read -r key value; do
    value=$(echo "$value" | xargs)
    if [[ -n "${data[$key]}" ]];then
        data[$key]+="$DELIMITER$value" 
    else
        data[$key]="$value"
    fi
done < $1


for key in "${!data[@]}";do
    echo "[$key]"
    IFS="$DELIMITER" read -r -a values <<< "${data[$key]}"
    for val in "${values[@]}";do
        echo "$val"
    done
done



