#!/bin/bash

hyprctl workspaces -j | jq -c 'sort_by(.id)'

socat -u UNIX-CONNECT:$XDG_RUNTIME_DIR/hypr/$HYPRLAND_INSTANCE_SIGNATURE/.socket2.sock - | \
    while read -r _; do
        active=$(hyprctl monitors -j | jq -r '.[] | select(.focused).activeWorkspace.id')
        eww update active="$active"
        hyprctl workspaces -j | jq -c 'sort_by(.id)'
    done
