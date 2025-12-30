#!/bin/bash

if [ "${PACK_SANTA}" ] ; then
  /scripts/install-santa.sh
fi

if [ "${MAP_DAY_BREAK}" ] ; then
  /scripts/install-day-break.sh
fi
