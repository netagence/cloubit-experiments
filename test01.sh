#!/bin/bash
#description     :Experimenting with Littlebits' Cloudbit
#author          :Pierre MOBIAN
#date            :20160116
#version         :0.1    
#usage           :bash test01.sh or ./test01.sh

### YOUR CLOUDBIT PERSONAL PARAMETERS - GET THOSE FROM YOUR SETTNGS AT http://control.littlebitscloud.cc/ ###
CLOUDBIT_DEVICEID="xxxxxxxxx""
CLOUDBIT_ACCESSTOKEN="xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"

### SCRIPT CONFIG STARTS HERE - DO NOT EDIT UNLESS YOU KNOW WHAT YOU'RE DOING ###
DATETIME_MARKER=$(date '+%Y%m%d_%H%M%S')
LOGFILEPATHNAME="littlebitscloud_$DATETIME_MARKER.log"

clear;
echo "Littlebits' Cloudbit test"
echo "Bash version ${BASH_VERSION}"

echo "Test running on your Cloudbit with ID $CLOUDBIT_DEVICEID"
 
### DO NOT EDIT BELOW ###
