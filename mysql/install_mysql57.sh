wget http://dev.mysql.com/get/mysql57-community-release-el7-8.noarch.rpm
yum localinstall mysql57-community-release-el7-8.noarch.rpm -y
yum install mysql-community-server -y
systemctl start mysqld   #必先启动才能查看默认密码
#systemctl status mysqld 
rm -rf  mysql57-community-release-el7-8.noarch.rpm*
grep 'temporary password' /var/log/mysqld.log
