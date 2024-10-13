#!/bish/bash


# 判断主机端口号状态



HOST="127.0.0.1"
PORTS="20 80 8080"
for PORT in $PORTS;do
if echo &>/dev/null > /dev/tcp/$host/$port; then
        echo "$PORT open"
    else
        echo "$PORT close"
    fi
done