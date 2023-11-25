#!/bin/bash

getwifi() {
    ssid=$(iwctl station wlan0 show | grep "Connected network" | awk '{print $3}')
    if [ -n "$ssid" ]; then
        echo "󰖩   $ssid"
    else
        echo "󰖪 "
    fi
}

echo $(getwifi)
