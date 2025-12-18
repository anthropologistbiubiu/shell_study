#!/usr/bin/env bash

# 定义和使用数组

my_array=('apple'  'orange' 'lemon')

# 数组遍历
for item in "${my_array[@]}"
do
    echo $item 
done
# 数组的长度

echo ${#my_array[@]}
# 通过下标访问数组的某个元素

echo ${my_array[0]}

# 数组添加元素

my_array+=('banana')
echo ${my_array[*]}

# 数组的其他用法







