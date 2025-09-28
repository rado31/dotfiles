#!/bin/bash

if [[ -z $(eww active-windows | grep 'power') ]]; then
    eww open power
else
    eww close power
fi
