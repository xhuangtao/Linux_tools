ln -sf /usr/share/zoneinfo/Asia/Shanghai    /etc/localtime ; 
hwclock --systohc ;
ntpdate cn.pool.ntp.org;
