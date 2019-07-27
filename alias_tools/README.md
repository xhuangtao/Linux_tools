
#### 1）alias_for_centos7.sh   
   用作简化Linux命令，特定的系统管理操作不需要再输入很长的组合命令。在其中设置别名或函数，通过：
` source alias_for_centos7.sh` 生效。  
 例如：我们想查找占用的cpu最多的十个进程，操作命令如下:  `ps aux  |  head  -1 ;  ps aux  | grep -v PID | sort -rn -k +3 |  head  `  
现在我们设置别名如下： ` alias topc='ps aux  |  head  -1 ;  ps aux  | grep -v PID | sort -rn -k +3 |  head'  `
我们只需输入：topc 便可显示占用cpu最多的十个进程，并且从大到小排序。如果们只想显示占用cpu做多的前5个进程并排序，只需输入：topc -5  
###### 别名包含  
1，Linux系统管理别名（包括文件，网络，系统等）  
2，docker 别名 （docker别名相关）  
3，k8s  别名 （k8s相关操作，通过kubectl）  
4，git 相关别名  

#### 2）pings.sh 
  在脚本中设置好需要的IP或域名地址，通过pings确认这些网址或IP能否访问。  
#### 3）random.sh
  通过random.sh $1  取 $1 位的随机字符 
#### 4） random_num8.sh
  通过 random_num8.sh  取 8 位的随机数字 
