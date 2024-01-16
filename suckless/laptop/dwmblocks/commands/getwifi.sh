#!/bin/bash

getwifi() {
    ssid=$(nmcli -t -f NAME,DEVICE connection show --active | cut -d: -f1 | head -n 1)
    if [ -n "$ssid" ]; then
        echo "󰖩 "
    else
        echo "󰖪 "
    fi
}

echo $(getwifi)
