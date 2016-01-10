############################################
# File Name: while_sh.sh
# Author: zhang xiao ping
# mail: zhangxiaoping91@163.com
# Created Time: 2016年01月04日 星期一 23时30分43秒
###################################
#!/bin/bash
i=1
s=0
while [ $i -le 100 ]
  do
     s=$(($s+$i))
     i=$(($i+1))
  done
  echo $s
