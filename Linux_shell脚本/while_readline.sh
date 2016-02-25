############################################
# File Name: while_readline.sh
# Author: zhang xiao ping
# mail: zhangxiaoping91@163.com
# Created Time: 2016年01月10日 星期日 13时34分58秒
###################################
#!/bin/bash
clear

while read line

do
   echo $line
done < 20160119.txt
