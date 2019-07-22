  if [ ! -n "$1" ]
  then
   echo "please input the random number after it: random 8 ";
     else
      if [[ $1 == *[!0-9]* ]]; then
         echo "please input a number after 'random' command,like: random 12 ";
        else
        if    [ "$1" -le 24 ]   # 24位以内的随机数
        then
         #方法1：
          echo $RANDOM |md5sum |cut -c 1-$1 ;
         #方法2：
         cat /proc/sys/kernel/random/uuid |cut -c 1-$1 ;
         else
           if [ "$1" -le 64 ] # 24~64位的随机数
             then  #方法3：
               declare -i num=$1-2;
               openssl rand -base64  $num|cut -c 1-$1 |head -1;
             else   #多余64位的随机数
               declare -i num=$1-2;  #方法3：
               openssl rand -base64  $num|cut -c 1-$1 ;
                if [ "$1" -gt 1024 ]
                   then
                     echo "the random number is too big!"
               fi
           fi
     fi
  fi
fi
