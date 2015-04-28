#!/bin/bash
# sleep 2
# mrxvt +sb -geometry 135x16+0-20 -title 'Aprisa Jobs' -e  watch -n 60 "/opt/ictools/bin/gstat | grep -e ap_pl -e aRt" &
sleep 2
mrxvt +sb -geometry 266x16+0-20 -title 'brettw Grid Jobs' -e watch "gstat -u brettw" &
