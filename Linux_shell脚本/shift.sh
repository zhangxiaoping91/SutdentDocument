#!/bin/bash

set a b c d e x y z

echo "\$@ init :" $@
echo "$#"
while shift
do
   [ -n "$1" ] && echo "shift 1, \$@ is change: $@"  
done





