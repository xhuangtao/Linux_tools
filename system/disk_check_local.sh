#!/bin/bash
#此脚本用于查看本机磁盘使用情况
#define vars
HOSTNAME=$(hostname) #主机名
IP=$(ip addr show |grep -E "inet"|grep -E  "eth0|ens33" |gawk  '{ print $2 }')  #主机IP，centOS7适用
DISK_NAME_LIST=$(df -h|grep -v  tmp | grep dev |awk '{print $1}'|sed ':label;N;s/\n/ /;b label') #sed 用于取消空格
USE_RATE_LIST=$(df -h|grep -v  tmp | grep dev |awk '{print $5}'|sed ':label;N;s/\n/ /;b label')
USE_RATE_LIST_NUM=$(df -h|grep -v  tmp | grep dev |awk '{print int($5)}')
#
#  echo -e \033[33m  ｛内容｝ \033[0m用于显示颜色不同 info用于表示
info=$(echo -e " \033[31m INFO:\033[0m"    \
               " The usage of the fowllowing Partition:" \
               " \033[33m  ${DISK_NAME_LIST[@]} \033[0m" is:    \
               " \033[33m  ${USE_RATE_LIST[@]}! \033[0m"         
       ) 
  for i in $USE_RATE_LIST_NUM; do
        if [ $i -ge 20 ]; then
          echo -e "\033[31m Warning:\033[0m"  "There's Partition usage  more than [20%] on" \
                  "\033[36m $IP($HOSTNAME)\033[0m " , " please check."
          echo  "$info"
        fi
  done 
