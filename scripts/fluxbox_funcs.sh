#!/bin/bash

function get_fb_desknum {
  local desk_num
  desk_num=$(expr $(xprop -root _NET_CURRENT_DESKTOP | awk '{print $3}') + 1)
  echo -n $desk_num
  return 0
}

function get_fb_deskname {
  local desk_num
  local desk_name
  local ws_names
  ws_names[1]="utils:1"
  ws_names[2]="ddsk:2"
  ws_names[3]="littleben:3"
  ws_names[4]="ddsk_scripts:4"
  ws_names[5]="block_flow:5"
  ws_names[6]="misc1:6"
  ws_names[7]="misc2:7"
  ws_names[8]="misc3:8"
  ws_names[9]="chip1:9"
  ws_names[10]="chip2:0"
  ws_names[11]="chip3:-"
  ws_names[12]="home:="
  desk_num=$(get_fb_desknum)
  desk_name=${ws_names[$desk_num]}
  echo -n $desk_name
  return 0
}
