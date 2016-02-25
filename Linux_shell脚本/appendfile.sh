#!/bin/bash

appendfile()
{
   echo "$2" >> "$1"
}

dir=/home/root

outFile="$dir/appendfile.txt"

[ -e $dir ] || mkdir -p $dir


appendfile $outFile "function is using"
appendfile $outFile "this is other using"
appendfile $outFile "Over"





