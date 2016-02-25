############################################
# File Name: openf1.sh
# Author: zhang xiao ping
# mail: zhangxiaoping91@163.com
# Created Time: 2016年01月20日 星期三 00时31分02秒
###################################
#!/bin/bash

datafile=$1

dirfile=$2

exec 6>$dirfile
exec 3<> $datafile

while read <&3
do
   echo $REPLY 1>&6
done
exec 3<&- 6>&-
