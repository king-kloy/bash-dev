#!/bin/bash

# Okai Yeboah [ king_kloy ]
# 12/06/19 at 22:49

# display options
function display_wifi_option() {
	echo   
	echo "Choose option: "
       	echo "	[1] Show available wifi networks"
	echo "	[2] Connect to known network"
      	echo "	[3] Quit"
	
	# read user option
	read -p "[-]: " option	
}

echo
echo "-------------------------------------------------------------------"
echo "									 "
echo "				WIFI CONNECTor				 "
echo "									 "
echo "-------------------------------------------------------------------"

display_wifi_option

while [ 1 ]
do
	echo

	# comparing options
	if [ "$option" = "1" ]
	then
		echo
		echo "[-] Showing available wifi networks..."
  		nmcli dev wifi

	elif [ "$option" = "2" ] 
	then
		echo
		echo "[-] Connect to known network"
		# ssid and key from user
		read -p 'Network <ssid>: ' ssid
		read -sp 'Password <key>: ' key

		nmcli dev wifi connect $ssid password $key
	elif [ "$option" = "3" ] 
	then 
		break
	fi
	display_wifi_option
done

echo "[-] closing program successfully..."
