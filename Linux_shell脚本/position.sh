############################################
# File Name: position.sh
# Author: zhang xiao ping
# mail: zhangxiaoping91@163.com
# Created Time: 2016年01月20日 星期三 00时02分15秒
###################################
#!/bin/bash
getUser_Shell()
{
	IFS=':'
	declare -i n=1 
	while read f1 f2 f3 f4 f5 f6 f7
           	do
	           echo "第 $n 行姓名：$f1，Login Shell：$f7" 
		   n=$(($n+1))
		done < "/etc/passwd"
}

getparam()
{
	echo "第一个：$1，第二个：$2"
	echo "共有 $# 个参数"
}

getSetPar()
{
	echo "本程序名称：$0"
	echo "共有 $# 个参数"
	echo "参数值：$@"
	echo "=================="
	echo "重置参数"
	set 66 88
	echo "重置后有：$# 个参数"
	echo "重置后参数值：$@"
}
#getparam $1 $2 $3
getSetPar $@










