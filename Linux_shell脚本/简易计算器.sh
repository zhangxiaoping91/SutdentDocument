#!/bin/bash
#���׼�������shell�ű������м�ĵļӡ������ˡ���

#���������ֵ

read -t 30 -p "�����һ��ֵ==>" num1
read -t 30 -p "����ڶ���ֵ==>" num2
read -t 30 -p "���������====>" ope

#�ж������ֵ�Ƿ�Ϊ��
if [ -n "$num1" -a -n "$num2" -a -n "$ope" ]
     then
         #�ж������ֵ�Ƿ�Ϊ����
         pram1=$(echo "$num1" | sed 's/[0-9,.]//g')
         pram2=$(echo "$num2" | sed 's/[0-9,.]//g')
         if [ -z "$pram1" -a -z "$pram2" ]
             then
               #�ж���ʲô�����
               if [ "$ope" == "+" ]
                    then
                       echo "�������ӷ�"
                       param=$(($num1 + $num2))
               elif [ "$ope" == "-" ]
                    then
                       echo "����������"
                       param=$(($num1 - $num2))
               elif [ "$ope" == "*" ]
                    then
                       echo "�������˷�"
                       param=$(($num1 * $num2))
               elif [ "$ope" == "/" ]
                    then
                       echo "����������"
                       param=$(($num1 / $num2))
               else
                       echo "��������������ȷ��ֻ������ + - * / "
                       exit 12
               fi
         else
            echo "����Ĳ�����������"
            exit 11
         fi
       
    echo "���Ľ��==> $num1 $ope $num2 = $param "

else
    echo "��������ݻ������Ϊ��"
    exit 10
fi