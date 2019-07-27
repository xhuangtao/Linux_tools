
#### 安装JAVA环境与相关配置
1. 打开配置环境变量的文件(此环境变量作用于全局) `vi /etc/profile `
2. 添加以下配置：  
`export JAVA_HOME=[位置]` [位置]通过：`ls -lrt /etc/alternatives/java`查找    
`export JRE_HOME=$JAVA_HOME/jre`  
`export CLASSPATH=$JAVA_HOME/lib:$JRE_HOME/lib:$CLASSPATH`  
`export PATH=$JAVA_HOME/bin:$JRE_HOME/bin:$PATH`  
:wq保存退出。
3. 让配置生效
`source  /etc/profile`  
4. 测试配置结果
`echo $JAVA_HOME`  

#### install_java.sh脚本
通过./install_java.sh  安装Java环境（yum安装）
