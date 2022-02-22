#!/bin/bash
clear
    echo ""
    echo ""
    echo "#######################################################"
    echo "###         Preparing for Installation              ###"
    echo "#######################################################"
    echo ""
    sleep 3s
echo "    1. Installing System Updates... this may take a while...be patient."
        (sudo apt update && sudo apt upgrade -y) > ~/docker-script-install.log 2>&1 &
        ## Show a spinner for activity progress
        pid=$! # Process Id of the previous running command
        spin='-\|/'
        i=0
        while kill -0 $pid 2>/dev/null
        do
            i=$(( (i+1) %4 ))
            printf "\r${spin:$i:1}"
            sleep .1
        done
        printf "\r"
sleep 2s
echo "    2. Installing System Updates... completed."
echo ""
echo ""

echo "Let's figure out which OS / Distro you are running."
echo ""
echo ""
echo "    From some basic information on your system, you appear to be running: "
echo "        " $(lsb_release -i)
echo "        " $(lsb_release -d)
echo "        " $(lsb_release -r)
echo "        " $(lsb_release -c)
echo ""
echo ""
PS3="Please select the number for your OS / distro: "

#cd /mnt
#mkdir {downloads,incomplete,move,nzb,share,tmp,torrent}
#chmod -R + 777 /mnt
