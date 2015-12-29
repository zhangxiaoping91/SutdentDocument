#!/bin/bash

for i in $(cat /etc/passwd | grep /bin/bash | grep -v /root | grep -v /zhangxp | cut -d ":" "-f1")
        do
           userdel $i
        done
