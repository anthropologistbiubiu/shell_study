#!/bin/bash

# 定义函数，计算组合数 C(n, k)
function combination() {
    local n=$1
    local k=$2
    if [[ $k -eq 0 || $k -eq $n ]]; then
        echo 1
    else
        echo $(( $(combination $((n-1)) $((k-1))) + $(combination $((n-1)) $k) ))
    fi
}

# 获取用户输入的行数
read -p "请输入要输出的行数： " rows

# 输出杨辉三角形
for ((i=0; i<rows; i++)); do
    for ((j=0; j<=i; j++)); do
        coefficient=$(combination $i $j)
        echo -n "$coefficient "
    done
    echo
done
