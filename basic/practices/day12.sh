#!/bin/bash
#!/bin/bash

# 获取主机名
HOSTNAME=$(hostname)

# 获取IP地址（macOS 使用 'en0' 或其他接口）
IP=$(ifconfig en0 | grep "inet " | awk '{print $2}')

# 获取系统版本
SYSTEM=$(sw_vers -productName && sw_vers -productVersion)

# 获取内核版本
CORE=$(uname -r)

# 获取CPU信息
CPU=$(sysctl -n machdep.cpu.brand_string)

# 获取内存大小
MEMORY=$(sysctl -n hw.memsize | awk '{printf "%.2f GB", $1/1024/1024/1024}')

# 获取磁盘数量
DISKNUM=$(diskutil list | grep -i "disk" | grep -i "external" -v | grep -i "Apple" -v | wc -l)

# 初始化信息数组
systemname=("HOSTNAME" "IP" "SYSTEM VERSION" "CORE VERSION" "CPU" "MEMORY SIZE")
systeminfo=("$HOSTNAME" "$IP" "$SYSTEM" "$CORE" "$CPU" "$MEMORY")

echo $systemname
echo $systeminfo

# 获取每个磁盘的信息
#for s in $(seq 1 $DISKNUM); do
#    eval DISK$s=$(diskutil info disk$s | grep "Disk Size" | awk '{print $3$4}')
#    eval systeminfo[$(($s+5))]='$'DISK$s
#    systemname[$(($s+5))]="DISK$s SIZE"
#done

# 输出系统信息
for i in ${!systeminfo[*]}; do
    echo "--------------------------------------------------------------"
    printf "|%-15s| %-43s|\n" "${systemname[$i]}" "${systeminfo[$i]}"
done
echo "--------------------------------------------------------------"