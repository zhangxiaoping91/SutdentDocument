############################################
# File Name: while_readline.sh
# Author: zhang xiao ping
# mail: zhangxiaoping91@163.com
# Created Time: 2016年01月10日 星期日 13时34分58秒
###################################
#!/bin/bash
clear

From="From：zhang@163.com"
To="To：18612940659@sina.cn"
Subject="Subject：Hello world"
Msg="新年快乐"
Em="20160119.txt"

cat >> $Em <<HERE

$From
$To
$Subject
$Msg
HERE

