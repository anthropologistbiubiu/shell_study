#!/usr/bin/env bash



# 创建+使用函数
function my_func() {
    echo "hello world , $1"
}

my_func "jack"

# 函数返回值

function add(){
    echo $(($1 + $2))
}

sum=$(add 1 2)
echo $sum

# 声明局部变量

function greet(){
    local name='sunweiming'
    echo "$1,$name"
    
}
greet 'love you'

# 检查函数是否存在

if type sub &> output.txt
then
    echo "function exist"
else
    echo "function not exist"
fi















