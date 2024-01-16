getbattery() {
    perc=$(acpi -b | grep -oP '\d+(?=%)')
    if [ "$perc" -ge 90 ]; then
        icon="󱈏"
    elif [ "$perc" -ge 80 ]; then
        icon="󰂂"
    elif [ "$perc" -ge 70 ]; then
        icon="󰂁"
    elif [ "$perc" -ge 60 ]; then
        icon="󰂀"
    elif [ "$perc" -ge 50 ]; then
        icon="󰁿"
    elif [ "$perc" -ge 40 ]; then
        icon="󰁾"
    elif [ "$perc" -ge 30 ]; then
        icon="󰁽"
    elif [ "$perc" -ge 20 ]; then
        icon="󰁼"
    elif [ "$perc" -ge 10 ]; then
        icon="󰁻"
    else
        icon="󱃍"
    fi

    if [[ $(acpi -b) == *"Charging"* ]]; then
        echo "󱐋$icon$perc%"
    else
        echo "$icon$perc%"
    fi
}

echo $(getbattery)

