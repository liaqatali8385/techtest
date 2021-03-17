#!/bin/sh

TS=`date +"%T"`

df -h | awk '$NF == "/" { print $4,$5,$6 }' | while read output;
do
  echo $TS $output >> /var/log/freespace
done
