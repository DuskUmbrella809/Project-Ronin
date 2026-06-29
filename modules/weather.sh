#!/bin/bash

weather() {
    # Get the current weather data using wttr.in
    WEATHER=$(curl -s "wttr.in/?format=%t|%w|%h|%m|%p|%u|%v|%l|%c")

    if [ -z "$WEATHER" ]; then
        echo "❌ Unable to retrieve weather data."
        echo
        pause
        return 1
    fi

    TEMP=$(echo "$WEATHER" | cut -d'|' -f1)
    WIND=$(echo "$WEATHER" | cut -d'|' -f2)
    HUMIDITY=$(echo "$WEATHER" | cut -d'|' -f3)
    MOON_PHASE=$(echo "$WEATHER" | cut -d'|' -f4)
    PRECIPITATION=$(echo "$WEATHER" | cut -d'|' -f5)
    UV_INDEX=$(echo "$WEATHER" | cut -d'|' -f6)
    VISIBILITY=$(echo "$WEATHER" | cut -d'|' -f7)
    LOCATION=$(echo "$WEATHER" | cut -d'|' -f8)
    CONDITION=$(echo "$WEATHER" | cut -d'|' -f9)