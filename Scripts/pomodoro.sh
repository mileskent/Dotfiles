#!/bin/bash

notify-send "Press Enter in the bash terminal to start the timer"
read -p "Press Enter to start the timer"

while :; do
    echo "Work session began at $(date +"%H:%M:%S")"
    end="Work will end at $(date --date='1 hour' +"%H:%M:%S")"
    echo $end
    notify-send "$end Focus for 60 minutes!"
    sleep 3600  # 60 minutes
    notify-send "Work session ended!"
    echo; echo "Break session began at $(date +"%H:%M:%S")"
    echo "Break will end at $(date --date='10 minutes' +"%H:%M:%S")"; echo
    notify-send "Break time! Take a 10-minute break."
    sleep 600  # 10 minutes
    notify-send "Break session ended!"

done

