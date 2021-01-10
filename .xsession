OUT_MONITOR_CONN="$(xrandr | grep 'HDMI-0 connected')"
if [ "$OUT_MONITOR_CONN" = "" ]
then
    xrandr --output eDP-1-1 --primary --auto
    xrandr --output eDP-1-1 --mode 1600x900 
else
    xrandr --output eDP-1-1 --off --output HDMI-0 --auto
    xrandr --output HDMI-0 --primary
    xrandr --output HDMI-0 --mode 1920x1080
    #--output eDP-1-1 --mode 1920x1080
#    xrandr --output eDP-1-1 --same-as HDMI-0
fi

exec dwm
