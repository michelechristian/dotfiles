#!/bin/sh

/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
/usr/lib/xfce4/notifyd/xfce4-notifyd &
xinput set-prop 13 "libinput Tapping Enabled" "1" &
xinput set-prop 13 "libinput Natural Scrolling Enabled" "1" &
xfsettingsd &
nm-applet &
# nitrogen --restore &
# xfce4-power-manager &
pgrep -x volumeicon > /dev/null || volumeicon &
pgrep -x clipit > /dev/null || clipit &

picom &

