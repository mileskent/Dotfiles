#!/bin/bash

getwifi() {
    ssid=$(iwctl station wlan0 show | grep "Connected network" | awk '{print $3}')
    if [ -n "$ssid" ]; then
        echo "󰖩  $ssid"
    else
        echo "󰖪 "
    fi
}

gettemp() {
    echo "$(curl -s wttr.in?format=%t | sed 's/[^0-9-]//g')°"
}

getbattery() {
    # add dynamic battery eventually
    echo "$(acpi -b | grep -oP '\d+%')"
}

counter=0
while :; do
    # quarterhourly update
    if [ $((counter % 900)) -eq 0 ]; then
        weather=$(curl wttr.in/?format="%t")
        dateinfo=$(date +"%a, %b %d")
    fi

    # minutely update
    if [ $((counter % 60)) -eq 0 ]; then
        battery=$(getbattery)
    fi

    # secondly update
    time=$(date +"%H:%M:%S")
    volume=$(pamixer --get-volume)

    # set bar
    xsetroot -name "|  $battery |  $(gettemp) | $(getwifi) | 󱄠 $volume% |   $dateinfo |  $time |"
    sleep 1s
    let 'counter++'
done

