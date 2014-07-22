#!/bin/bash

#$1为要处理的文件名，$2为最后一个选项符号，若单选多选题为D，判断题为B

#替换所有类似(23)为),('
#注意：如果源文件中出现(2)这样开始的非题目行，则会出现错误。
sed -i "s/^([0-9]\{1,3\})/\'),(\'/" $1

#在最后一个选项行添加一行，内容为', '
sed -i "/^$2/a\\', \'" $1

