#### 各脚本解析：
###### 1）check_ip.sh 
查看参数是否为正确的IP地址。 
###### 2）check_port_status.sh
查询指定IP地址的相关端口是否打开（在脚本中设置端口）。 
###### 3）check_url.sh 
查询指定URL地址是否能访问，且返回的http code为多少并且解释。  
###### 4）finds.sh 
在$1 目录下查找包含$2的字段的文件名。  
###### 5）local_nic.sh
给用户提供多个网卡选择,场景：服务器多个网卡时，获取指定网卡，例如网卡流量。 
###### 6） monitor_netcard.sh
查看=$1网卡的实时流量，并实时显示。  
###### 7）pingc.sh  
在脚本中设置好需要的IP或域名地址，通过pings确认这些网址或IP能否访问。  
###### 8） network_init.sh  
CentOS7初始安装后，是没有办法联网的，得先配置网络：`vi /etc/resolv.conf` 添加：nameserver 8.8.8.8 再 `vi /etc/sysconfig/network-scripts/ifcfg-ens33` 修改：ONBOOT=NO 改成 ONBOOT=yes 再：`service network restart` 重启网络可以连接外网， 再 `yum -y install net-tools` 安装网络工具查看IP。 再根据需要：`yum -y groupinstall "GNOME Desktop" `添加图形界面。 
