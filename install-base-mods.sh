#!/bin/bash

# install basic mods that we basically always want
# shrek tank with the music
# https://steamcommunity.com/sharedfiles/filedetails/?id=210368756
# left 4 bots
# https://steamcommunity.com/sharedfiles/filedetails/?id=3022416274


echo """force_install_dir "/home/louis/${INSTALL_DIR}"
login anonymous
workshop_download_item 222860 210368756
workshop_download_item 222860 3022416274
quit""" > install-base-mods.txt
./steamcmd.sh +runscript install-base-mods.txt