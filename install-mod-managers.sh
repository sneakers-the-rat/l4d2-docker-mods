#!/bin/bash

# Install sourcemod and metamod

# Sourcemod
# Extract into root /addons and /cfg directories, which are symlinked to install dir
SOURCEMOD_URL=$(curl -s https://www.sourcemod.net/downloads.php\?branch\=stable | egrep "quick-download download-link.*linux.*" | sed "s/.*href='//g" | sed "s/'.*//g")
curl $SOURCEMOD_URL > sourcemod.tar.gz
tar -xvzf sourcemod.tar.gz
