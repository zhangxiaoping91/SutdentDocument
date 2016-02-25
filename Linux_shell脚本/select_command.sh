############################################
# File Name: select_command.sh
# Author: zhang xiao ping
# mail: zhangxiaoping91@163.com
# Created Time: 2016年01月10日 星期日 13时34分58秒
###################################
#!/bin/bash
clear
cd /home/root/baseShell
PS3="请选择："

select f in *

do
  echo "你选择的编号是：$REPLY，选择的文件是：$f"

  if [ ${f##*.} == 'sh' ]
        then
           ./$f
  elif [ ${f##*.} == 'txt' -o ${f##*.} == 'c' ]
  	    then
  	       cat $f  
  else
  	    ./$f
  fi
done

