#!/bin/bash
# Copyright 2024 Michael Gale <https://www.michaelgale.dev/>

# WIP: This script uses xrandr to set the display settings for the ultrawide monitor and 4K TV
# The script takes one argument in the form of one of the following options:
# - "tv" to set the primary display to the 4K TV and disable the ultrawide monitor
# - "match" to set the primary display to the 4K TV and match the resolution and refresh rate of the ultrawide monitor
# - "native" to set the display settings to the native resolution and refresh rate of both displays
# - "tv-off" to disable the 4K TV
# - "uw-off" to disable the ultrawide monitor
# - "reset" to set the display settings to the default configuration

DISPLAY_UW_MONITOR="USB-C-0";
DISPLAY_4K_TV="HDMI-0";

# If argument 1 is empty, set the primary display to the ultrawide monitor and disable the 4K TV
if [ -z "$1" ]; then
  xrandr --output $DISPLAY_UW_MONITOR --primary --mode 3440x1440 --rate 100.00

  # Disable the 4K TV
  xrandr --output $DISPLAY_4K_TV --off
fi

# If argument 1 is "tv", set the primary display to the 4K TV and disable the ultrawide monitor
if [ "$1" == "tv" ]; then
  xrandr --output $DISPLAY_4K_TV --primary --mode 3840x2160 --rate 59.94
  
  # Disable the ultrawide monitor
  xrandr --output $DISPLAY_UW_MONITOR --off
fi

# If argument 1 is "match", set the primary display to the 4K TV and match the resolution and refresh rate of the ultrawide monitor
if [ "$1" == "match" ]; then
  xrandr --output $DISPLAY_4K_TV --primary --mode 3840x2160 --rate 59.94 --left-of $DISPLAY_UW_MONITOR # --scale 0.5x0.5
  xrandr --output $DISPLAY_UW_MONITOR --mode 3840x2160 --rate 59.94 # --scale 0.5x0.5

  # TODO: Fix the scaling issue
fi

# If argument 1 is "native", set the display settings to the native resolution and refresh rate of both displays
if [ "$1" == "native" ]; then
  xrandr --output $DISPLAY_UW_MONITOR --primary --mode 3440x1440 --rate 100.00
  xrandr --output $DISPLAY_4K_TV --mode 3840x2160 --rate 60.00 --left-of $DISPLAY_UW_MONITOR
fi

# If argument 1 is "tv-off"
if [ "$1" == "tv-off" ]; then
  xrandr --output $DISPLAY_4K_TV --off
fi

# If argument 1 is "uw-off"
if [ "$1" == "uw-off" ]; then
  xrandr --output $DISPLAY_UW_MONITOR --off
fi

# If argument 1 is "reset", set the display settings to the default configuration
if [ "$1" == "reset" ]; then
  xrandr --output $DISPLAY_UW_MONITOR --primary --mode 3440x1440 --rate 100.00
  xrandr --output $DISPLAY_4K_TV --mode 2560x1440 --rate 60.00 --left-of $DISPLAY_UW_MONITOR
fi
