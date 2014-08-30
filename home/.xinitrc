xrdb -merge .Xresources
xrdb -merge .XresourceTomorrowNight

trayer --edge top --align right --SetDockType true --SetPartialStrut true --expand true --width 10 --transparent true --tint 0x191970 --height 12 &

xsetroot -solid midnightblue

xscreensaver -no-splash &

exec xmonad
