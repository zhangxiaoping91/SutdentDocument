#!/bin/bash

factor_in()
{
  declare -i tmp
  declare -i tmp1

  tmp="$1"

  if [ $tmp -eq 1 ]
    then
      echo -n "1"
      r=1
  else
      echo -n "$tmp * "
      tmp1=$tmp
      tmp=$(($tmp-1))
      factor_in $tmp
      r=$(($tmp1*$r))
  fi  
  
}

read -t 30 -p "Please input " number

echo -n $number"!="

factor_in $number

echo -n "= $r"
echo

