#!/bin/bash

pamixer --get-volume

pactl subscribe | stdbuf -oL awk '/Event '\''change'\'' on sink/ { system("pamixer --get-volume") }'
