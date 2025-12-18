#!/bin/bash

# 获取日志文件路径
logfile=$1

# 提取内容
grep "Server version" "$logfile" | awk -F'Server version:' '{print "serverVersion:" $2}'
grep "Server number" "$logfile" | awk -F'Server number:' '{print "serverName:" $2}'
grep "OS Name" "$logfile" | awk -F'OS Name:' '{print "osName:" $2}' | awk -F', OS Version:' '{print "osName:" $1 "\nosVersion:" $2}'