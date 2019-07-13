echo "nameserver 8.8.8.8" >> /etc/resolv.conf
sed -i "s/ONBOOT=no/ONBOOT=yes/g" /etc/sysconfig/network-scripts/ifcfg-ens33
service network restart
yum -y install net-tools
echo "~~~~~nameserver~~~~~~"
grep nameserver /etc/resolv.conf
echo "~~~~ifcfg-ens33~~~~~~~"
grep ONBOOT /etc/sysconfig/network-scripts/ifcfg-ens33
