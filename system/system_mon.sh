#!/bin/bash
#开始便定义系统需要显示的信息
DATE=$(date +%F" "%H:%M:%S)
IP=$(ip addr show |grep -E "inet"|grep -E  "eth0|ens33" |gawk  '{ print $2 }')  #centOS7适用
HOSTNAME=$(hostname)
MAIL="xhuangtao@126.com"
CPU_US=$(vmstat |awk  NR==3'{print $13}' ) #NR==3 表示选取文本的第三行
CPU_SY=$(vmstat |awk  NR==3'{print $14}' )
CPU_IDLE=$(vmstat |awk  NR==3'{print $15}')
CPU_WAIT=$(vmstat |awk  NR==3'{print $16}' )
CPU_USED=$(($CPU_US+$CPU_SY))
MEM_TOTAL=$(free -mwt | gawk  /Mem/'{ print $2 }')
MEM_USED=$(free -mwt | gawk  /Mem/'{ print $3 }' )
MEM_FREE=$(($MEM_TOTAL-$MEM_USED))
#如果Linux系统没有安装vmstat工具
if ! which vmstat &>/dev/null; then
    echo "vmstat command no found, Please install procps package." 
    exit 1
fi
#cpu占用送报警邮件
if [ $CPU_USED -le 50 ]; then  #如果使用率小于50%测试用
#if [ $CPU_USED -ge 50 ]; then  #如果使用率大于50%
    echo "
    Date: $DATE
    IP: $IP
    Hostname:$HOSTNAME
    CPU utilization(CPU使用率): $CPU_USED

    " | mail -s "CPU使用情况 $DATE" $MAIL #邮件主题

fi
# 内存使用情况报警邮件
if [ $MEM_FREE -gt 100 ]; then  #空闲内存大于100M测试用
#if [ $MEM_FREE -le 500 ]; then  #空闲内存小于500M发送报警邮件
    echo "
    Date: $DATE
    IP: $IP
    Hostname:$HOSTNAME
    Memory usage(内存使用情况,单位：M): Total（总内存）=$MEM_TOTAL,Used(已使用)=$MEM_USED,Free（空闲内存）=$MEM_FREE
    " | mail -s "内存使用情况 $DATE" $MAIL #邮件主题
fi
