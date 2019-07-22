#!/bin/bash
#每个磁盘占用过满的机器，只能一台机器一封邮件，不能都把他们发送到同一台机器中
TMP_FILE=/tmp/disk.tmp
HOST_INFO=host.info #当前目录存放需要查看的主机的名称ip，ssh端口，用户名
DATE=$(date +%F" "%H:%M:%S)
MAIL="xhuangtao@126.com"
#
#echo -e "please edit host.info in this dirctory like this: IP User Port:" "\033[33m 192.168.1.1 admin 22\033[0m" "each line fill one IP." 
        
#read -p "Press any key to continue."
#
for IP in $(awk  /^[^#]/'{print $1}'  $HOST_INFO); do  #根据IP循环载入
    USER=$(awk -v ip=$IP  ip=='$1{print $2}'  $HOST_INFO) #user为host.info文件中第二个参数
    PORT=$(awk -v ip=$IP  ip=='$1{print $3}' $HOST_INFO) # #port为host.info文件中第三个参数
    ssh -p $PORT $USER@$IP  df -h | grep -v  tmp | grep dev  > $TMP_FILE  #将df查找的磁盘信息内容存到/tmp/disk.tmp
    HOSTNAME=$(ssh -p $PORT $USER@$IP hostname)   #远端机器名称
    DISK_NAME_LIST=$(cat  $TMP_FILE| awk '{print $1}'|sed ':label;N;s/\n/ /;b label'  ) #sed 用于取消空格，分区的名称
    DISK_USED_RATE_LIST=$(cat  $TMP_FILE| awk '{print $5}'|sed ':label;N;s/\n/ /;b label' ) #分区百分比
    DISK_USED_RATE_LIS_NUM=$(cat  $TMP_FILE |awk '{print int($5)}')                   #分区的百分比数字，用于计算
    disk_info=$(echo -e "\033[31m INFO:\033[0m"  " The usage of the fowllowing Partition:"   "\033[33m  ${DISK_NAME_LIST[@]} \033[0m" "is:" \
              "\033[33m  ${DISK_USED_RATE_LIST[@]}! \033[0m"     #分区占用量
         )
    echo -e "\033[35m ~~~~~~$IP($HOSTNAME) at $DATE~blank means no warning~~~~~~~~~~~~ \033[0m" #分隔符，对应显示hostname和IP
    echo  "$disk_info"
  for i in $DISK_USED_RATE_LIS_NUM; do
        if [ $i -ge 20 ]; then
       INFO=$( echo "Warning: There's Partition:  ${DISK_NAME_LIST[@]}  usage  more than [20%] on $IP($HOSTNAME) is : ${DISK_USED_RATE_LIST[@]}! " )
       echo "$INFO" | mail -s "Disk Warning at server: $IP($HOSTNAME) on  $DATE -  " $MAIL
          break;
         #  else 
         #  echo "There's NO Partition usage  more than [50%] on the server list."
        fi
  done       
done
