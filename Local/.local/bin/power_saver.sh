#!/usr/bin/env sh

# Power_Saver Script to be enabled if adapter is diconnected

# Change hyprland screen resolution
# monitor = eDP-1, 1280x720@60, auto, 1
# monitor = , 1280x720@60, 0x0, 1

# enable power_saver profile
# powerprofilesctl set power-saver

# Dim screen by half 

# [ Disable Hyprland - EYE-CANDY ]
POWERSAVER=$(hyprctl getoption animations:enabled | awk 'NR==1{print $2}')
if [ "$POWERSAVER" = 1 ] ; then
  hyprctl --batch "\
    keyword animations:enabled 0;\
    keyword decoration:shadow:enabled 0;\
    keyword decoration:blur:enabled 0;\
    keyword decoration:fullscreen_opacity 1;\
    keyword general:gaps_in 0;\
    keyword general:gaps_out 0;\
    keyword general:border_size 3"
  hyprctl notify 1 5000 "rgb(40a02b)" "Power_Saving Mode[ON]"
  exit
else
  hyprctl notify 1 5000 "rgb(d20f39)" "Power_Saving Mode[OFF]"
  hyprctl reload
  exit 0
fi
exit 1





