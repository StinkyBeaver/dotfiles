# ~/.config/waybar/scripts/wifi_menu.sh
#!/bin/bash

chosen=$(nmcli dev wifi list | wofi --dmenu -p "Select Wi-Fi")
ssid=$(echo "$chosen" | awk '{print $1}')

if [[ -n "$ssid" ]]; then
    nmcli dev wifi connect "$ssid"
fi
