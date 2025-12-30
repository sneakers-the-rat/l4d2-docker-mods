#!/bin/bash

# install basic mods that we basically always want
# shrek tank with the music
# https://steamcommunity.com/sharedfiles/filedetails/?id=210368756
# left 4 bots
# https://steamcommunity.com/sharedfiles/filedetails/?id=3022416274


# echo """force_install_dir "/home/louis/${INSTALL_DIR}"
# login anonymous
# workshop_download_item 222860 210368756
# workshop_download_item 222860 3022416274
# quit""" > install-base-mods.txt
# ./steamcmd.sh +runscript install-base-mods.txt

# this is probably pretty fragile, but gamemods.com doesn't offer clean direct download links

if [ ! -f /addons/big_wat.vpk ]; then
  wget -U "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:146.0) Gecko/20100101 Firefox/146.0" \
    https://www.gamemaps.com/download/eyJpZHMiOls5NDczXX0\?s\=3d4b0dff75ee227ee77d1c4569ad9743cc4ae0e393120f6a9f75f72e55d179c4\&e\=1767089412 \
    -O big_wat.zip

  unzip -o -d /addons big_wat.zip 
  rm big_wat.zip
fi

# left 4 bots 2
# https://www.gamemaps.com/details/31078
if [ ! -f /addons/myl4d2addons_Left4Bots2.vpk ]; then
  wget -U "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:146.0) Gecko/20100101 Firefox/146.0" \
    https://www.gamemaps.com/download/eyJpZHMiOlszMTA3OF19\?s\=f2d922f41ce38855063424b6a5ec486b706c7599984d1cf1cf1e02446526cd9a\&e\=1767095331 \
    -O l4b2.zip

  unzip -o -d /addons l4b2.zip 
  rm l4b2.zip
fi



