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

[ -f /etc/xprofile ] && . /etc/xprofile
[ -f ~/.xprofile ] && . ~/.xprofile

xset +fp /usr/share/fonts/local &
xset fp rehash &
xset -b &
xfce4-power-manager &
picom --experimental-backends --backend glx -b &
feh --image-bg "#a9ced1" --bg-center ~/Images/vasilii-kandinskii-vid-murnau-kartina-abstraktsionizm-dom-do.jpg
#hsetroot -solid '#a9ced1' &
#hsetroot -solid '#e0ffff' &
#hsetroot -solid '#ccc' &
conky &
#/home/gamabunta/.config/polybar/launch.sh &
#~/dwm/status.sh &
#loop
#while true; do
#    #Log stderror to a file
#    #dwm 2> ~/.dwm.log
#    # No error logging
#    sowm >/dev/null 2>&1
#done

exec sowm
