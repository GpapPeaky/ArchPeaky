setxkbmap us &
xset b off &
xsetroot -cursor_name left_ptr &
sxhkd &
dbus-update-activation-environment --systemd DISPLAY XAUTHORITY &
exec dbus-launch --exit-with-session bspwm