############################################
# File Name: system_monitor.sh
# Author: zhang xiao ping
# mail: zhangxiaoping91@163.com
# Created Time: 2016年01月10日 星期日 13时34分58秒
###################################
#!/bin/bash
clear
show_name()
{
	echo "今个儿是$1，你$2，来自$3"
}
#获取当期登录用户
name=$(env | grep USER | cut -d "=" "-f2")
#获取访问IP
ip=$(env | grep SSH_CLIENT | cut -d "=" "-f2" |awk '{print $1}')
#获取当前系统时间年-月-日
today=$(date +%F)

if [ $# !=0 ]
	then
	  echo "Uage:%0[使用者名称]"
	  exit 0
fi

show_name "$today" "$name" "$ip"

sleep 5
echo "Bye-Bye;-)"