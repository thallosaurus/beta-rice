#!/bin/bash
gsettings set org.mate.background picture-filename $(jq '.wallpaper' ~/.cache/wal/colors.json)