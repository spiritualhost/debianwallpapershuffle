#!/bin/bash

#Wallpaper directory
wallpaper_dir="$HOME/Pictures/Wallpaper"

#Check if directory exists
if [[ ! -d "$wallpaper_dir" ]]; then
	echo "Wallpaper dir $wallpaper_dir doesn't exist."
	exit 1
fi

#Pick a random wallpaper
wallpaper_choice=$(find "$wallpaper_dir" -type f | shuf -n 1)
echo $wallpaper_choice

#Uncomment for specific system
#Need lines for other systems here!

#GNOME (gsettings)
gsettings set org.gnome.desktop.background picture-uri-dark "file://$wallpaper_choice"

#Confirmation message
echo "Wallpaper set to $wallpaper_choice"

