#!/bin/bash

user=$(env | grep USER | cut -d "=" -f 2)
echo "当前登录用户==> $user"

if [ "$user" = "root" ]
    then
         echo "当前登录用户==> $user"   
else         
	 echo "当前登录用户不是root是===> $user"
fi
