#!/bin/sh

function run {
    if ! pgrep -f $1 ;
    then
        $@&
    fi
}

run picom
run nm-applet
run clipit
run /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1
# run /usr/lib/xfce4/notifyd/xfce4-notifyd
run xfsettingsd
run xinput set-prop 13 "libinput Tapping Enabled" 1
run xinput set-prop 13 "libinput Natural Scrolling Enabled" 1
run volumeicon
# run xfce4-power-manager
run redshift-gtk

