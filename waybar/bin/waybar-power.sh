#!/bin/bash

# Define menu options
options=("Log Out" "Shutdown" "Restart" "Suspend" "Hibernate" "Lock Screen" "System Info"s)

# Prompt user to select an option
selected_option=$(printf '%s\n' "${options[@]}" | wofi --dmenu --prompt "Custom Menu" | awk '{print $1}')

# Execute corresponding action based on the selected option
case $selected_option in
  "Log Out")
    swaymsg exit
    ;;
  "Shutdown")
    systemctl poweroff
    ;;
  "Restart")
    systemctl reboot
    ;;
  "Suspend")
    systemctl suspend
    ;;
  "Hibernate")
    systemctl hibernate
    ;;
  "Lock Screen")
    swaylock
    ;;
  "System Info")
    kitty -e neofetch
    ;;
  *)
    # Handle unexpected input
    ;;
esac
