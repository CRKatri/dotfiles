#!/bin/bash

# Kill other instances
killall -q polybar

# Wait for processes to shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch the bar

# bspwm

# polybar pc -r -c ~/.config/polybar/topbar.ini &
# polybar mon -r -c ~/.config/polybar/topbar.ini &
polybar laptop -r -c ~/.config/polybar/topbar.ini &
