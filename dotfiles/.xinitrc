xset +fp /usr/share/fonts/local
xset fp rehash
xset -b
[ -f ~/.Xresources ] && xrdb -merge ~/.Xresources
#urxvtd -q -o -f
#udiskie -2 --tray &
exec awesome
