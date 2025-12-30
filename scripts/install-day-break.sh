#!/bin/bash
# https://www.gamemaps.com/details/9221

if [ ! -f /addons/daybreak_v4.vpk ]; then
  wget -U "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:146.0) Gecko/20100101 Firefox/146.0" \
    https://www.gamemaps.com/download/eyJpZHMiOls5MjIxXX0\?s\=9b7f274f88cf9131716ff8637981744e31df46c66dacb8180591973f461e098a\&e\=1767095907 \
    -O day_break.zip

  unzip -o -d /addons day_break.zip 
  rm day_break.zip
fi
