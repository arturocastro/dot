#!/bin/bash
# Statusbar loop
while true; do
    text=""
    if [[ 10 == $(date +%H) ]]; then
        minutes=$(date +%M)
        if (( 45 <= $minutes && $minutes <= 59 )); then
            text="STANDUP! "
        fi
    fi
    xsetroot -name "$text$( date +"%F %R" )"
    #sleep 1m    # Update time every minute
    sleep  5   # Update time every minute
done
