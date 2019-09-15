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

# Add folder with own patched fonts

xset +fp /usr/share/fonts/patched

# Set dpi

xrandr --dpi 144

# Start common programs

nm-applet &
compton &

session=${1:-awesome}

case $session in
    i3|i3wm         )
        export TERMINAL="kitty" # i3-sensible-terminal overrule
        nitrogen --restore & # Restore wallpaper
        exec i3;;
    awesome         )
        export LUA_PATH="$HOME/.config/awesome/muhwidgets/?.lua;;"
        exec awesome;;
    *               )
        exec $1;;
esac
