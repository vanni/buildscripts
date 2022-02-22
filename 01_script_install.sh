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

#cd /mnt
#mkdir {downloads,incomplete,move,nzb,share,tmp,torrent}
#chmod -R + 777 /mnt
