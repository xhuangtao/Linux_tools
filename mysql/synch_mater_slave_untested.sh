#!/bin/bash  
#此脚本没有在有主从数据库的mysql中测试
USER=root
PASSWD=123456
IO_SQL_STATUS=$(mysql -u$USER -p$PASSWD -e  "show slave status\G;" |  egrep -o "Slave_.*_Running:.*" | awk -F: '{print $2}' )
for i in $IO_SQL_STATUS; do
    THREAD_STATUS_NAME=${i%:*}
    THREAD_STATUS=${i#*:}
    if [ "$THREAD_STATUS" != "Yes" ]; then
        echo "Error: MySQL Master-Slave $THREAD_STATUS_NAME status is $THREAD_STATUS!"
    fi
done
