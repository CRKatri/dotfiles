#!/bin/bash

# get the additional monitor script
#source ~/.config/bspwm/scripts/monitor

function run {
    pkill $1
    $@ &
}

# fix for weird java behaviour
#wmnam LG3D &

# change your keyboard if you need it
# check_keyboard
#run setxkbmap us -model pc98 -variant alt-intl

#Some ways to set your wallpaper besides variety or nitrogen
#feh --bg-scale ~/.config/bspwm/wall.png &
#feh --bg-fill /usr/share/backgrounds/arch_logo.png &
#feh --randomize --bg-fill ~/Dropbox/Apps/Desktoppr/*

# Find monitors and set wallpapers
run nitrogen ~/Pictures/at-at-minimalist-pc-wallpaper-4k.png --set-scaled
# run find_mon ".local/share/wallpapers/mojave_dark.jpg"

run xsetroot -cursor_name left_ptr
run sxhkd -c $HOME/.config/bspwm/sxhkdrc

run picom --experimental-backends --config $HOME/.config/bspwm/picom.conf

#run polybar
$HOME/.config/polybar/launch.sh

setxkbmap -option compose:rctrl

pulseaudio --start

run dunst

run spotifyd --no-daemon
