#!/bin/bash
#检查相应地址的端口是否开放
HOST=$1
PORT="111 22 25 80 8080"
if [ ! -n "$1" ]; then
  echo "please input the host as param!"
else
for PORT in $PORT; do
    if echo &>/dev/null > /dev/tcp/$HOST/$PORT; then
        echo "$PORT open"
    else
        echo "$PORT close"
    fi
done
fi
