

# 判断用户是否存在



read -p "请输入用户名" user

for i in  $(awk -F : '{print $1}' /etc/passwd)
do
    if [ i == "$user" ];then
        echo "$user exists"
    else
        echo "$user not exists"
    fi
done