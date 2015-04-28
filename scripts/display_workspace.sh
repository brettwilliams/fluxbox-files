#!/bin/bash
source ${HOME}/.fluxbox/scripts/fluxbox_funcs.sh
n=$(get_fb_deskname)
export DISPLAY=${DISPLAY:-$(\ls -1rt ~/.nx | grep -v temp | tail -n 1 | awk 'BEGIN {FS="-"} {print $2":"$3}')}
notify-send -t 1000 "$n"
