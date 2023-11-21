counter=0
while :; do
    if [ $((counter % 60)) -eq 0 ]; then
        weather=$(curl wttr.in/?format="%C+%t")
    fi
    dateinfo=$(date +"%a, %b %d %H:%M")
    xsetroot -name "| $weather | $battery | $dateinfo |"
    sleep 1m
    ((counter++))
done

