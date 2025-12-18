#!/usr/bin/env bash


# for 循环
for item in {1..5}
do
  echo $item
done

# while 循环
# 打印数字1～5
echo 'while 循环'
count=1
while [[ $count -le 5 ]]
do
  echo $count 
  ((count++))
done


# 循环读取文件内容
echo '循环读取文件'
while read line  
do
  echo $line
done < test.txt

# c风格for 循环
for ((i=0;i<10;i++))
do
  echo $i
done

if [ $count -le 10 ]
then 
  echo 'count < 10' 
fi

# until 循环


















