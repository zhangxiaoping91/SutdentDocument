#!/bin/bash
#批量添加用户

read -t 10 -p "输入用户名：" username
read -t 10 -p "输入添加数量：" num
read -t 10 -p "输入密码：" pass

if [ -n "$username" -a -n "$num" -a -n "$pass"  ]
   then
   param=$(echo "$num" | sed 's/[0-9]//g' )
   if [ -z "$param" ]
        then
        for ((i=1;i<=$num;i=i+1))
           do
             /usr/sbin/useradd $username$i
             echo $pass | /usr/bin/passwd --stdin $username$i
           done
   else
      echo "添加数量为正整数"
   fi
else
  echo "输入不能为空"
fi
