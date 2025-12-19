#!/bin/bash


# 统计每个单词出现的个数

# 确保输入了正确的文件名
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 filename"
    exit 1
fi

echo "$1"

# 使用 awk 处理文本，统计单词出现频率
awk '{
    # 分割每一行中的单词
    for (i = 1; i <= NF; i++) {
        # 累计每个单词的出现次数
        count[$i]++
    }
}
END {
    # 输出每个单词及其出现的次数
    for (word in count) {
        print word, count[word]
    }
}' "$1" | sort -k2,2n  # 按词频升序排序