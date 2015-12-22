#!/bin/bash
apache=$(ps aux | grep httpd | grep -v grep)
echo "apache的值==>$apache"
if [ -z "$apache" ]
    then 
            echo "apache is stop"
    else
            echo "apache is running"
            /etc/rc.d/init.d/httpd stop
            echo "apache is stoping"
fi