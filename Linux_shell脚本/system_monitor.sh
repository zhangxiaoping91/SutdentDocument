############################################
# File Name: system_monitor.sh
# Author: zhang xiao ping
# mail: zhangxiaoping91@163.com
# Created Time: 2016年01月10日 星期日 13时34分58秒
###################################
#!/bin/bash
clear

if [[ $# -eq 0  ]]
 then
 #define variable reset_terminal
 reset_terminal=$(tput sgr0)
 #check OS type
	os=$(uname -o)
	echo -e '\E[32m' "os type："$reset_terminal $os
 #check os release version and name
	os_name=$(cat /etc/issue | grep -e "Server")
	echo -e '\E[32m' "os release version and name："$reset_terminal $os_name
 #check architecture
	architecture=$(uname -m)
	echo -e '\E[32m' "architecture："$reset_terminal $architecture
 #check kernel release
	kernelrelease=$(uname -r)
	echo -e '\E[32m' "kernel release："$reset_terminal $kernelrelease
 #check hostname
	hostname=$(hostname)
	echo -e '\E[32m' "hostname："$reset_terminal $hostname
 #check internal ip
	internalip=$(hostname -I)
	echo -e '\E[32m' "internal ip："$reset_terminal $internalip
 #check external ip
	externalip=$(curl -s http://ipecho.net/plain)
	echo -e '\E[32m' "external ip："$reset_terminal $externalip
 #check dns
	dns=$(cat /etc/resolv.conf | grep -E "\<nameserver[ ]+" | cut -d " " -f2)
	echo -e '\E[32m' "dns："$reset_terminal $dns
 #check if connected to internet or not
	ping -c 2 baidu.com >> /dev/null && echo "internal:connected" || echo "internal:disconnected"
 #check logged in users
	who > /tmp/who
	echo -e '\E[32m' "logged in users："$reset_terminal && cat /tmp/who
	rm -rf /tmp/who

fi
