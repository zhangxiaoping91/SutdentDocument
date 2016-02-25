#!/bin/bash
#简易计算器的shell脚本，进行简的的加、减、乘、除

#接收输入的值

read -t 30 -p "输入第一个值==>" num1
read -t 30 -p "输入第二个值==>" num2
read -t 30 -p "输入运算符====>" ope

#判断输入的值
if [ -n "$num1" -a -n "$num2" -a -n "$ope" ]
     then
         pram1=$(echo "$num1" | sed 's/[0-9,.]//g')
         pram2=$(echo "$num2" | sed 's/[0-9,.]//g')
         if [ -z "$pram1" -a -z "$pram2" ]
             then
               if [ "$ope" == "+" ]
                    then
                       echo "你在做加法"
                       param=$(($num1 + $num2))
               elif [ "$ope" == "-" ]
                    then
                       echo "你在做减法"
                       param=$(($num1 - $num2))
               elif [ "$ope" == "*" ]
                    then
                       echo "你在做乘法"
                       param=$(($num1 * $num2))
               elif [ "$ope" == "/" ]
                    then
                       echo "你在做除法"
                       param=$(($num1 / $num2))
               else
                       echo "输入的运算符不正确，只能输入 + - * / "
                       exit 12
               fi
         else
            echo "输入的参数不是整数"
            exit 11
         fi
       
    echo "最后的结果==> $num1 $ope $num2 = $param "

else
    echo "输入的数据或运算符为空"
    exit 10
fi




