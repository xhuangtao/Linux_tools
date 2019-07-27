#!/bin/bash
#在$1 目录下查找包含$2的字段的文件名
DIR=$1
KEY=$2
for FILE in $(find $DIR -type f); do
    if grep $KEY $FILE &>/dev/null; then
        echo "--> $FILE"
    fi
done
