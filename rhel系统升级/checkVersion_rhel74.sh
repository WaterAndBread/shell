#!/bin/bash


cur_version=`cat /etc/redhat-release  | awk '{print $7}'`
cur_kernel=`cat /proc/version | awk '{print $3}'`

if [[ $cur_version == "7.4"  && $cur_kernel == "3.10.0-693.el7.x86_64" ]]
then
     echo "update successfully"
     echo "system version:"
     cat /etc/redhat-release
     echo "kernel version:"
     echo $cur_kernel
else
     echo "update failed,please try again"
     echo "current system version:"
     cat /etc/redhat-release

fi
