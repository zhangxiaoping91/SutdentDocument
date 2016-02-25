#!/bin/bash

getline()
{
  local i=0;
  while read line
  do
     i=$((i+1))
  done < $file
  echo "$file have $i line"
}

#file="20160118.txt"
file=$1
getline

echo 'getline  execute complite'


