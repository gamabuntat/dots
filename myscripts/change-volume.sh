#!/bin/bash

msgId="991049"

volume=$(pactl list sinks | grep '^[[:space:]]Volume:' | head -n $(( $SINK + 1 )) | tail -n 1 | sed -e 's,.* \([0-9][0-9]*\)%.*,\1,')
((volumee=$volume+$1))

if [[ volumee -lt 0 ]]; then
  ((volumee=0))
fi

if [[ volumee -gt 100 ]]; then
  ((volumee=100))
fi

if [[ $1 == "toggle" ]]; then
  pactl set-sink-mute 0 toggle
elif [[ volumee -lt 100 && volumee -gt 0 ]]; then
  pactl set-sink-volume 0 $volumee%
fi

mute=$(pactl get-sink-mute 0)

if [[ $mute == *"yes" || $volumee -eq 0 ]]; then
  dunstify -a "changeVolume" -u low -r "$msgId" "Volume mute: " -h int:value:${volumee}
else
  dunstify -a "changeVolume" -u low -r "$msgId" "Volume [${volumee}]: " -h int:value:${volumee}
fi

canberra-gtk-play -i audio-volume-change
