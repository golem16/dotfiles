# power_result=$(printf "Sleep\nHibernate\nShutdown\nRestart\nLogout" | rofi -dmenu -no-history -p "Power")
# power_result=$(printf "Lock\nLogout\nSleep\nShutdown\nRestart" | rofi -dmenu -no-history -show-icons -p "Power")
# power_result=$(printf "Lock\0icon\x1fsystem-lock-screen-symbolic
# Logout\0icon\x1fsystem-log-out-symbolic
# Sleep\0icon\x1fmedia-playback-pause-symbolic
# Shutdown\0icon\x1fsystem-shutdown-symbolic
# Restart\0icon\x1fsystem-reboot-symbolic" | rofi -dmenu -no-history -show-icons -p "Power")
power_result=$(printf "Lock
Logout
Sleep
Shutdown
Restart" | rofi -dmenu -no-history -p "Power")



# https://stackoverflow.com/questions/45698101/writing-case-statements
case $power_result in

  "Lock")
    pidof hyprlock || hyprlock
    ;;

  "Logout")
    hyprshutdown || hyprctl dispatch exit
    ;;

  "Sleep")
    systemctl suspend -i
    ;;

  "Shutdown")
    hyprshutdown -t 'Shutting down...' --post-cmd 'shutdown -P 0'
    ;;
  
  "Restart")
    hyprshutdown -t 'Restarting...' --post-cmd 'reboot'
    ;;

    # *)
    #     echo "Unknown command: $command" ;;
esac
