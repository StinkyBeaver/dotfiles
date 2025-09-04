#!/bin/bash

options="Shutdown\nReboot\nSuspend\nLogout\nCancel"

choice=$(echo -e "$options" | tofi --prompt-text "⚡ Power Menu" --fuzzy-match false)

case "$choice" in
  Shutdown) systemctl poweroff ;;
  Reboot) systemctl reboot ;;
  Suspend) systemctl suspend ;;
  Logout) hyprctl dispatch exit ;;
  Cancel|*) exit 0 ;;
esac
