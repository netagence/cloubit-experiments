#!/bin/bash
#description     :Experimenting with Littlebits' Cloudbit. This test script is made to make sure the Cloudbit is properly functional.
#author          :Pierre MOBIAN
#date            :20160116
#version         :0.1    
#usage           :bash inittest.sh or ./inittest.sh

### YOUR CLOUDBIT PERSONAL PARAMETERS - GET THOSE FROM YOUR SETTNGS AT http://control.littlebitscloud.cc/ ###
CLOUDBITDEVICEID="00e04c1ef631"
CLOUDBITACCESSTOKEN="7b5cf3d5c39ea98f564c12efcc1da8a60cdd2b88c614815a7ab947c00f2fadd9"

### SCRIPT CONFIG STARTS HERE - DO NOT EDIT UNLESS YOU KNOW WHAT YOU'RE DOING ###
SCRIPTVERSION="0.1"
DATETIME_MARKER=$(date '+%Y%m%d_%H%M%S')
LOGFILEPATHNAME="littlebitscloud_$DATETIME_MARKER.log"

### DO NOT EDIT BELOW ###

clear;
echo "Littlebits Cloudbit test - V $SCRIPTVERSION"
echo "Bash version ${BASH_VERSION}"
echo ""

read -p "What is your name? " name
echo "Hello, Master ${name}, I am at your command!"

echo "I am calling your Cloudbit with ID $CLOUDBITDEVICEID"
echo "Basic infos on your device:"

curlCmd() {
    curl -i -XGET -H "Authorization: Bearer $CLOUDBITACCESSTOKEN" -H "Accept: application/vnd.littlebits.v2+json" https://api-http.littlebitscloud.cc/devices/$CLOUDBITDEVICEID
}

curlCmd

printf "%q " "${curlCmd[@]}"    # Print the array, quoting as needed
printf "\n"
"${curlCmd[@]}" > test1.html
