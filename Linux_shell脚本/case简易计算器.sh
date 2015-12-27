#!/bin/bash
#用case编写简易计算器

#接收输入的参数和运算符

read -t 10 -p "请输入第一个参数：" num1
read -t 10 -p "请输入运算符+ - * /：" ope
read -t 10 -p "请输入第二个参数：" num2

#首先判断输入的参数是否为空
if [ -n "$num1" -a -n "$num2" -a -n "$ope" ]
      then 
          param1=$(echo "$num1" | sed 's/[0-9]//g')
          param2=$(echo "$num2" | sed 's/[0-9]//g')
          if [ -z "$param1" -a -z "$param2" ]
              then
                 case "$ope" in 
                      "+")
                         echo "你做的操作是：+ "
                         param=$(($num1+$num2))
                         ;;
                      "-")
                         echo "你做的操作是：- "
                         param=$(($num1-$num2))
                         ;;
                      "*")
                         echo "你做的操作是：* "
                         param=$(($num1*$num2))
                         ;;
                      "/")
                         echo "你做的操作是：/ "
                         param=$(($num1/$num2))
                         ;;
                       *)
                         echo "你输入的运算符不是+ - * / "
                         exit 12 
                esac
          else
              echo "输入的参数格式不正确"
              exit 11 
          fi
    echo "$num1 $ope $num2 = $param"
else
   echo "输入的参数为空"
   exit 10
  
fi 
