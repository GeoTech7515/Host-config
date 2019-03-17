#!/usr/bin/env bash
# Blocking Youtube or any site by using the host file

#Welcome meesage
echo
echo "   ######################################################################"
echo "   #  You are now running the program that will ruin the kids' lives XD.#"
echo "   #          Enjoy what your about to do because they wont.            #"
echo "   ######################################################################"
echo "   #       It is recommended to run this program on an Administrator    #"
echo "   #            account to avoid any problems that may arise            #"
echo "   ######################################################################"
echo "   #         If you are having any probelems please email me at:        #"
echo "   ######################################################################"
echo "   #                        grivera@cisphl.org                          #"
echo "   ######################################################################"
echo
echo "To continue press enter:"
read

clear

echo
echo "   #####################################################################"
echo "   #    It is recommended that you make a copy of the original host    #"
echo "   #     file to a flash drive or on the computer in the event you     #"
echo "   #                   delete or damage the file                       #"
echo "   #####################################################################"
echo
echo " Will you be making a copy of the file [Y,n]"
read copy
if [[ $copy == "y" ]]; then
	#statements
	mkdir ~/Desktop/Host_File/
	cp /etc/hosts ~/Desktop/Host_File/
	clear
	echo -e "Making copy to your Desktop now named \033[32;1mHost_File\033[m ."
else 
	clear
fi

echo "Are you in a Administrator account [Y,n]"
read answer
if [[ $answer == "y" ]]; then
	#statements
	echo -e "\033[32;1mYou may move on\033[m"
else
	#statements
	clear
	echo -e "\033[31;1mGo login into an Administrator account, then run this program again.\033[m"
	exit 0;	
fi
clear
 echo "Are you sure you want to block sites? [Y,n]" 
read answer
if [[ $answer == "y" ]]; 
then
	#configuring the host file
	sudo nano /etc/hosts;
else exit 0
fi

clear

#Flushing the DNS
sudo killall -HUP mDNSResponder;

say DNS cache has been flushed;

#Checking to see if you can connect
ping -t 3 youtube.com

clear

echo -e "\033[32;1mAll Done\033[m"



