############################################
# File Name: monitor_man.sh
# Author: zhang xiao ping
# mail: zhangxiaoping91@163.com
# Created Time: 2016年01月15日 星期五 22时12分32秒
###################################
#!/bin/bash
cd /home/root/baseShell
resettem=$(tput sgr0)
declare -A ssharray
i=0
numbers=""

for script_file in $(ls -I "monitor_man.sh")
do
    echo -e '\E[32m' "The Script：$i===>"  $resettem  $script_file
    ssharray[$i]=$script_file
    numbers="${numbers} | $i "
    i=$((i+1))
done

while true
do
    read -p "请输入要执行的脚本编号 【 ${numbers} 】：" exec
    param=$(echo $exec | sed 's/[0-9]//g')
#    echo ${ssharray[$exec]}
    file=${ssharray[$exec]}
#    echo $file
#    echo ${file##*.}
    if [ -n "$param" ]
        then
          exit 1
    else
    	if [ ${file##*.} == 'sh' ];then
		/bin/bash  $file	
	elif [ ${file##*.} == 'txt' -o ${file##*.} == 'c' ];then
		cat $file
	else
		./$file
	fi
    fi
done
