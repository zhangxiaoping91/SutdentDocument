############################################
# File Name: getProcess.sh
# Author: zhang xiao ping
# mail: zhangxiaoping91@163.com
# Created Time: 2016年01月20日 星期三 00时44分40秒
###################################
#!/bin/bash
if [ $# -ne 1 ]
   then
       echo "Usage：$0 进程名称关键词"
       exit 1
fi

proc=$1

pid=$(ps -auxw | grep $1 | grep -v grep | grep -v $0 | awk '{print $2}')

if [ -z "$pid" ]
     then
       echo "找不到此进程"
else
    echo $pid
fi
