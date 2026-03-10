# power_result=$(printf "Sleep\nHibernate\nShutdown\nRestart\nLogout" | rofi -dmenu -no-history -p "Power")
# power_result=$(printf "Lock\nLogout\nSleep\nShutdown\nRestart" | rofi -dmenu -no-history -show-icons -p "Power")
# power_result=$(printf "Lock\0icon\x1fsystem-lock-screen-symbolic
# Logout\0icon\x1fsystem-log-out-symbolic
# Sleep\0icon\x1fmedia-playback-pause-symbolic
# Shutdown\0icon\x1fsystem-shutdown-symbolic
# Restart\0icon\x1fsystem-reboot-symbolic" | rofi -dmenu -no-history -show-icons -p "Power")
LOCK="󰌾 Lock"
LOGOUT="󰍃 Logout"
SLEEP="󰤄 Sleep"
SHUTDOWN="󰐥 Shutdown"
RESTART="󰜉 Restart"

power_result=$(printf "$LOCK\n$LOGOUT\n$SLEEP\n$SHUTDOWN\n$RESTART" | rofi -dmenu -no-history -p "Power")



# https://stackoverflow.com/questions/45698101/writing-case-statements
case $power_result in

  "$LOCK")
    pidof hyprlock || hyprlock
    ;;

  "$LOGOUT")
    pidof hyprshutdown || hyprshutdown -t 'Logging out...' --post-cmd 'loginctl kill-session $XDG_SESSION_ID' || hyprctl dispatch exit
    ;;

  "$SLEEP")
    systemctl suspend -i
    ;;

  "$SHUTDOWN")
    pidof hyprshutdown || hyprshutdown -t 'Shutting down...' --post-cmd 'shutdown -P 0'
    ;;
  
  "$RESTART")
    pidof hyprshutdown || hyprshutdown -t 'Restarting...' --post-cmd 'reboot'
    ;;

    # *)
    #     echo "Unknown command: $command" ;;
esac
