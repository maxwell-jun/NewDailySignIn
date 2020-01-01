#!/bin/bash

basepath=$(cd `dirname $0`; pwd)
if [ ! -e `which crontab` ];then
    `yum install -y crontabs`
fi
echo '00 12 * * * root echo `date +%Y%m%d-%H%M%S` >> '$basepath/daily' && cd '$basepath' && git add . && git commit -m `date +%Y%m%d-%H%M%S` && git push' >> /etc/crontab
if [[ ! -e "$basepath/daily" ]];then
    `touch $basepath/daily`
fi
systemctl restart crond 
chkconfig crond on
