getvolume() {
    volumelevel=$(pamixer --get-volume)
    if [ "$volumelevel" -ge 75 ]; then
        icon="󰕾 "
    elif [ "$volumelevel" -ge 50 ]; then
        icon="󰖀 "
    elif [ "$volumelevel" -gt 0 ]; then
        icon="󰕿 "
    else
        icon="󰝟 "
    fi
    echo "$icon$volumelevel%"
}

getvolume
