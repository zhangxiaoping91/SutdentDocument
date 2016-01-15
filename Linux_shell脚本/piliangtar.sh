#!/bin/bash
#批量解压缩
cd /home/root
ls *.tar.gz > ls.log
file=$(cat ls.log)
for x in $file
       do
          tar -zxvf $x 
       done
rm -rf ls.log
sleep 5