#!/bin/bash
#########################################################################
# File Name: gitpush.sh
# Author: lorock
# Email: lorock@qq.com
# Created Time: Wed Jan  3 15:40:08 2018
#########################################################################
# ./gitpush.sh "备注说明" "版本号"
git add -A
git commit -m "$1"
git pull
git push
if [ x$2 != x""  ];then
git tag -a V$2 -m "V$2 $1"
git push origin --tags
fi
