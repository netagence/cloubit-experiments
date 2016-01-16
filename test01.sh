#!/bin/bash
#description     :Experimenting with Littlebits' Cloudbit
#author          :Pierre MOBIAN
#date            :20160116
#version         :0.1    
#usage           :bash test01.sh or ./test01.sh

### YOUR CLOUDBIT PERSONAL PARAMETERS - GET THOSE FROM YOUR SETTNGS AT http://control.littlebitscloud.cc/ ###
CLOUDBITDEVICEID="xxxxxxxxx""
CLOUDBITACCESSTOKEN="xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"

### SCRIPT CONFIG STARTS HERE - DO NOT EDIT UNLESS YOU KNOW WHAT YOU'RE DOING ###
DATETIME_MARKER=$(date '+%Y%m%d_%H%M%S')
LOGFILEPATHNAME="littlebitscloud_$DATETIME_MARKER.log"

clear;
echo "Littlebits Cloudbit test"
echo "Bash version ${BASH_VERSION}"

echo "Test running on your Cloudbit with ID $CLOUDBITDEVICEID"
echo "Basic infos on your device:"

# array=
curl -i -XGET -H "Authorization: Bearer $CLOUDBITACCESSTOKEN" -H "Accept: application/vnd.littlebits.v2+json" https://api-http.littlebitscloud.cc/devices/$CLOUDBITDEVICEID

### DO NOT EDIT BELOW ###
