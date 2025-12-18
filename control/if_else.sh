#!/bin/bash

# 判断语句
number=6

if [ $number -gt 5 ];then
    echo "number > 5"
elif [ $number -eq 5 ];then
    echo "number == 5"
else
    echo "number < 5"
fi


# 分支语句
case $number in

    5)
        echo "number == 5"
    ;;
    6)
        echo "number == 6"
    ;;
    *)
        echo "number 未知"
    ;;
esac



name="alice"
if [[ $name == "alice" ]]; then
    echo "name is alice"
else
    echo "unknow name"
fi


filename="filename.doc"

if [[ $filename == file* ]];then
    echo "$filename"
else
    echo "unknow filename"
fi


a=10
if [[ a -gt 5 && a -lt 12 ]];then
    echo "$a"
else
    echo "wrong condition"
fi


file="./shell_basic.sh"

if [[ -e $file ]];then
    echo "$file 存在当前路径下"
    if [[ -d $file ]];then
        echo "$file 是目录文件"
    fi
    if [[ -f $file ]];then
        echo "$file 是常规文件"
    fi
    if [[ -L $file ]];then
        echo "$file 是链接文件"
    fi
    if [[ -r $file ]];then
        echo "$file 可读"
    fi
    if [[ -w $file ]];then
        echo "$file 可写"
    fi
    if [[ -x $file ]];then
        echo "$file 可执行"
    fi
else 
    echo " file not exists"
fi




email="email@gmail.com"

if [[ $email =~ ^[a-z0-9]+@[a-z0-9]+\.com$ ]];then
    echo "符合邮箱格式"
else 
    echo "不符合邮箱格式"
fi



value="hello"

if [[ ! vaule =~ ^/d$ ]];then
    echo "$value 不是纯数字"
else
    echo "$value 是纯数字"
fi





if test $value == "hello" ;then
    echo "$value 测试条件成功"
else
    echo "$value 测试失败"
fi


# 循环遍历语句


for item in {1..5};do
    echo $item
done



for file in $(ls ./);do
    echo "$file"
done

b=1

while [ $b -lt 5 ];do
    echo $b
    b=$((b+1))
done

b=10
until [ $b -eq 15 ];do
    echo $b
    b=$((b+1))
done





# 交互式菜单选择

select fruit in apple banaa orange;do
    if [[ -n $fruit ]];then
        echo "$fruit"
        break
    else 
        echo "wrong selection, try again!"
    fi
done



# 遍历操作 



fruits=("apple" "banana" "kiwi" "orange")


for fruit in "${fruits[@]}";do
    echo "$fruit"
done



declare -A colors


colors=(["apple"]="red" ["orange"]="yellow" ["kiwi"]="gree")


for key in "${!colors[@]}";do
    value=${colors["$key"]}
    echo "$key,$value"
done



# 文件遍历,遍历所有输入的参数


while read -r line;do
    echo "$line"
done < "shell_basic.sh"


for comm in "$@";do
    echo "$comm";
done

echo "遍历当前目录下的所有文件:"
ls -alh | while read  -r file;do
    echo "$file"
done



str="strings"

for ((i=1;i<${#str};i++));do
    echo "${str:$i:1}" 
done