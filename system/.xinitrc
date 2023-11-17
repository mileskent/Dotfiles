#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then







    xrdb -merge $sysresources

fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then







    xrdb -merge "$userresources"

fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

# set resolution and refresh rate
xrandr --output HDMI-A-0 --mode 1920x1080 --rate 144

# mouse stuff 
xinput --set-prop 'pointer:''Razer Razer DeathAdder V2' 'libinput Accel Profile Enabled' 0, 1
xinput --set-prop 'pointer:''Razer Razer DeathAdder V2' 'libinput Accel Speed' -0.1

# draw wallpaper
nitrogen --restore &

# start dwm
exec dwm

