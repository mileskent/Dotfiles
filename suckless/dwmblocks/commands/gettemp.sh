#!/bin/bash

gettemp() {
    url="curl -s wttr.in/$(cat ~/.wttrinloc)?format=%t"
    echo " $($url | sed 's/[^0-9-]//g')°"
}

echo $(gettemp)

