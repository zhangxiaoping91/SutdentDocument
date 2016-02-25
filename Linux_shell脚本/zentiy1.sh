############################################
# File Name: zentiy1.sh
# Author: zhang xiao ping
# mail: zhangxiaoping91@163.com
# Created Time: 2016年01月27日 星期三 02时27分36秒
###################################
#!/bin/bash
zenity='/usr/bin/zenity'

$zenity --calendar --text "Pick a day" --title "Medical Leave" --day 13 --month 5 --year 2010
