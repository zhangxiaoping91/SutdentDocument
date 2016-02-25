############################################
# File Name: window_Command.sh
# Author: zhang xiao ping
# mail: zhangxiaoping91@163.com
# Created Time: 2016年01月25日 星期一 00时23分54秒
###################################
#!/bin/bash
Dialog='/usr/bin/dialog'
Shells=""
Tmp="/tmp/window_Command.$$"
WC_L="/tmp/WC_L.$$"
declare -i i=1
declare -i sum=10
title="请选择你要执行的脚本"
ls /home/root/baseShell > $WC_L
sum=$(wc -l $WC_L | awk '{print $1}')
for file in *
do
  Shells="$Shells$i>$file $file "
  i=$((i+1))
done
echo $Shells
rm -rf $WC_L
while true
do
$Dialog --menu "$title" 20 60 15  $Shells 2>$Tmp
#获取选择
Choice=$(cat $Tmp)
[ -z "$Choice" ] && Choice="Cancel"

rm -rf $Tmp

echo "你选择执行的脚本是：" $Choice

execShell=$(echo $Choice | awk -F\> '{print $2}')
#echo ${execShell##*.}
if [ ${execShell##*.} == 'sh' ];then
         /bin/bash $execShell
else
         cat $execShell
fi
sleep 5
done
