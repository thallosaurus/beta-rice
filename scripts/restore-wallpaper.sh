#!/bin/bash
IMAGE=$(jq '.wallpaper' ~/.cache/wal/colors.json)
gsettings set org.mate.background picture-filename ${IMAGE:-/opt/beta/theme/wallpaper.jpg}