#!/bin/bash

shopt -s -o nounset

m=

GetLOTO()
{
   local r
   r=$(($RANDOM%43))
   
   if [ $r -eq 0 ]
        then
           r=$[ r+1 ]
   fi

   if [ $r -le 9 ]
        then
           echo "0$r"
   else
        echo $r  
   fi 
}

GenNumAndCheckRepeat()
{
   local n
   m=$(GetLOTO; GetLOTO; GetLOTO; GetLOTO; GetLOTO; GetLOTO | sort -n )
#   echo $m
   n="$m"
   n=$(echo $n | tr ' ' '\n' | uniq -d)
   if [ -z "$n" ] 
        then
             return 0
   else
        return 1  
   fi 
}

declare -i i=1 j
while [ $i -le "$1" ]
do
    GenNumAndCheckRepeat
    if [ $? -ne 0 ]
         then
         continue
    fi

    j=$i
    if [ $j -le 9 ]
       then
         echo -n "这是第 0$j 组" 
    else
         echo -n "这是第 $j 组"
    fi
    echo $m
    i=$[ i+1 ]
done




