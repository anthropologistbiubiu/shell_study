#!/bin/bash

# 声明一个关联数组

# 定义一个特殊的分隔符，选择一个不太可能出现在数据中的字符
DELIMITER=$'\x1F'  # ASCII 的单元分隔符

# 逐行读取文件内容
while IFS=":" read -r key value; do
    # 去除前后空格
    value=$(echo "$value" | xargs)
    # 将每个值追加到对应的 key 下，使用分隔符分隔
    if [[ -n "${data[$key]}" ]]; then
        data[$key]+="$DELIMITER$value"
    else
        data[$key]="$value"
    fi
done < "$1"

# 输出数据，确保格式正确 tr 的用法

#echo $(printf '%s\n'  "${!data[@]}") # 得到了一个字符串列表

for key in $( printf '%s\n' "${!data[@]}" | sort );do
    echo "[$key]"
    echo "${data[$key]}" | tr $DELIMITER '\n' 
done