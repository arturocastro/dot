#!/bin/sh

pgrep xroot > /dev/null 2>&1 || /home/artper01/etc/xroot.sh &
pgrep clipmenu > /dev/null 2>&1 || clipmenud &

skypeforlinux &
firefox &

dwm
