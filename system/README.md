##### 1）system_init.sh 
登陆系统的初始化：通过：echo "alias_for_centos7.sh /root/git/centos7_alias/alias_for_centos7.sh" >> /etc/rc.d/rc.local 添加开机启动项，载入别别名和函数。
#####  2）system_mon.sh 
监控CPU和内存的使用情况，运行脚本时如果高于某个预设值，便发送邮件通知，可以通过vi /etc/crontab 定期执行此脚本，已达到监控的目的。
##### 3）fixtime_Shanghai.sh
修改系统时间到上海时间
##### 3） disk_check_local.sh
查询本地磁盘分区的使用情况（占用比例）。
##### 4） disk_check.sh
查询当前目录host.info（host.info文件通过此脚本创建）文件中IP地址对应的机器，的磁盘分区的使用情况（占用比例）。用法：./disk_check.sh （原理：通过ssh执行远程代码）

执行结果例如：[user@system]# ./disk_check.sh   
` ~~~~~~(tencentHost) at 2019-07-27 16:21:46~blank means no warning~~~~~~~~~~~~`   
 `INFO:  The usage of the fowllowing Partition:   /dev/vda1  is:   18%! `

##### 5） login_to.sh
login_to.sh可以登录：host.info文件的中IP列表中机器，前提是配置好公私钥，否则每次需要输入密码。
