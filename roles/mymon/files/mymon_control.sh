#!/bin/bash
mymon_bin=/home/falcon/scripts/mymon
home_dir=/home/mysql

if [ -f $home_dir/mymon.cfg ];then
    $mymon_bin -c $home_dir/mymon.cfg
    exit
fi

for dir in `ls $home_dir`;do
  if [ -f $home_dir/$dir/mymon.cfg ];then
      $mymon_bin -c $home_dir/$dir/mymon.cfg
  fi
done
