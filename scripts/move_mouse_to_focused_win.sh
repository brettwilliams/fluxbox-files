#!/usr/bin/bash

#get focused window winId
hexId=$(xprop -root | awk '/_NET_ACTIVE_WINDOW\(WINDOW\)/{print $NF}')
winId=$(echo $hexId | sed -e 's/^0x//')

#get winId geometry
winInfo=`wmctrl -lG | grep ${winId}`
winX=$(echo $winInfo | awk '{print $3}')
winY=$(echo $winInfo | awk '{print $4}')
winW=$(echo $winInfo | awk '{print $5}')
winH=$(echo $winInfo | awk '{print $6}')

#calculate now mouse position
pX=$(expr $winX + $winW / 2)
pY=$(expr $winY + $winH / 2)

#move mouse
xte "mousemove $pX $pY"
