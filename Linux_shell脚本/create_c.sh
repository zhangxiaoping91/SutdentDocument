############################################
# File Name: select_command.sh
# Author: zhang xiao ping
# mail: zhangxiaoping91@163.com
# Created Time: 2016年01月10日 星期日 13时34分58秒
###################################
#!/bin/bash
clear

echo "create hello.c"

cat <<'EOF' >hello.c

#include <stdio.h>

int main()
{
  printf("Hello world!\n");
  return 0;
}
EOF

echo "compile hello.c"

gcc -o hello hello.c 

if [ $? -eq 0 ]
   then
      echo "execute hello"
      ./hello
else
  echo "compile Error:hello.c"
fi