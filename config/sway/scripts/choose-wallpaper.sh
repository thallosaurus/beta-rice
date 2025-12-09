#!/bin/bash
ranger --choosefile=/tmp/chosen-wallpaper ~/Pictures

if [ -f /tmp/chosen-wallpaper ]; then
  file=$(</tmp/chosen-wallpaper)

  if [[ -n "$file" ]]; then
    wal -i $file;
    gsettings set org.mate.background picture-filename $file
  fi
  rm /tmp/chosen-wallpaper
fi

#rm /tmp/chosen-wallpaper
