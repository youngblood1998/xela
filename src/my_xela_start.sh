#!/bin/bash

echo "###############   START XELA./xela_server   ###############" 
{
gnome-terminal -t "xela_server" -x bash -c "sudo ip link set can0 type can bitrate 1000000; sudo ip link set up can0; cd /home/jay/xela/src/u16; ./xela_server"
}&

sleep 1s

echo "###############   START XELA./xela_viz1   ###############" 
{
gnome-terminal -t "xela_viz" -x bash -c "cd /home/jay/xela/src/u16; ./xela_viz"
}&

echo "###############   START XELA./xela_viz2   ###############" 
{
gnome-terminal -t "xela_viz" -x bash -c "cd /home/jay/xela/src/u16; ./xela_viz --viz 2"
}&


