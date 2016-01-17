#!/bin/bash
#description     :Experimenting with Littlebits' Cloudbit by PiAMo (Pierre and Arthur). This test script is made to make sure your Cloudbit is properly functional.
#author          :Pierre MOBIAN
#date            :20160116
#version         :0.1    
#usage           :bash inittest.sh or ./inittest.sh

### YOUR CLOUDBIT PERSONAL PARAMETERS - GET THOSE FROM YOUR SETTNGS AT http://control.littlebitscloud.cc/ ###
CLOUDBITDEVICEID="xxxxxxxxx"
CLOUDBITACCESSTOKEN="xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"

### SCRIPT CONFIG STARTS HERE - DO NOT EDIT UNLESS YOU KNOW WHAT YOU'RE DOING ###
SCRIPTVERSION="0.1"
DATETIME_MARKER=$(date '+%Y%m%d_%H%M%S')
LOGFILEPATHNAME="littlebitscloud_$DATETIME_MARKER.log"

### DO NOT EDIT BELOW ###

clear;
echo "Littlebits Cloudbit tests by PiAMo (Pierre + Arthur) - V $SCRIPTVERSION"
echo "Bash version ${BASH_VERSION}"
echo ""

read -p "What is your name? " name
echo "Hello, Master ${name}, I am at your command!"
echo ""
echo "I am calling your Cloudbit with ID $CLOUDBITDEVICEID"
echo "What would you like me to do, O Cloudbit Master ${name}?"

PS3='Please enter your choice: '
options=(
    "Display infos on your Cloudbit"
    "Test a simple action"
    "Play a basic dice game"
    "Quit"
)

select option in "${options[@]}"; do
    case "$REPLY" in 
        1) 
echo "Basic infos on your device:"

		curlCmd() {
		    curl -i -XGET -H "Authorization: Bearer $CLOUDBITACCESSTOKEN" -H "Accept: application/vnd.littlebits.v2+json" https://api-http.littlebitscloud.cc/devices/$CLOUDBITDEVICEID
		}

		curlCmd;
		printf "%q " "${curlCmd[@]}"    # Print the array, quoting as needed
		printf "\n"
		"${curlCmd[@]}" > test1.html
		;;

        2)
echo "Powering on your device at 100% for 1 second:"
		echo ""
		curl -i -XPOST \
		-H "Authorization: Bearer $CLOUDBITACCESSTOKEN" \
		https://api-http.littlebitscloud.cc/v3/devices/$CLOUDBITDEVICEID/output \
		-d percent=100 \
		-d duration_ms=2000
	
	echo ""
	;;

        3)
echo "You must use a bargraph as the output to play this."
echo "Pick a number (1 through 5) and I will randomly light the bargraph a few times - see if your number comes up :-)"

	echo ""
	MAXCOUNT=10
	count=1
	echo "Playing $MAXCOUNT times"
	while [ "$count" -le $MAXCOUNT ]      # Generate 10 ($MAXCOUNT) random integers.
	do

	VALEURLUM=$[ 1 + $[ RANDOM % 100 ]]
	echo $VALEURLUM;


	curl -i -XPOST \
		-H "Authorization: Bearer $CLOUDBITACCESSTOKEN" \
		https://api-http.littlebitscloud.cc/v3/devices/$CLOUDBITDEVICEID/output \
		-d percent=$VALEURLUM \
		-d duration_ms=1500

	echo ""
	
	let "count += 1"  # Increment count.
	sleep 2
	done
	echo ""
	;;
        
	4) break ;;
    esac
done



