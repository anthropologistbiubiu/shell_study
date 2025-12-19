#!/bin/bash


#!/bin/bash

# 使用 awk 提取第二列信息，并用 sort 和 uniq -c 统计重复次数
# 使用 sort 先按次数降序排列，再按单词字母升序排列
# 筛选出重复的项，并格式化输出

awk '{print $2}' newcoder.txt | sort | uniq -c | sort -k1,1nr -k2 | awk ' $1 > 1 {print$1, $2}'