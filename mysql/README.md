#### 各脚本解析：
###### 1）install_mysql57.sh
centos7下安装 mysql5.7并找出 /var/log/mysqld.log 中临时的root密码
###### 2）backup_mysqldb.sh
用于备份数据库，需要在本脚本中填入数据库、地址和数据库用户名密码
###### 3）init_mysql_root.sql
更新mysql中的root密码，并使外部可以完全访问，注意此脚本默认设置root密码为123456，请根据需要修改。
通过： `Mysql>source 【sql脚本文件的路径全名】`  执行。
###### 4）synch_mater_slave_untested.sh
同步mysql中的主从数据库，未经测试。  参考：https://mp.weixin.qq.com/s/O2vbWbJ-K68nXxvVwUCfaw
