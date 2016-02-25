#!/bin/bash
apache=$(ps aux | grep httpd | grep -v grep)
echo "apache的值==>$apache"
if [ -n "$apache" ]
    then 
            echo "apache is running"
    else
            echo "apache is stop"
            /etc/rc.d/init.d/httpd start
            echo "apache is starting"
fi
