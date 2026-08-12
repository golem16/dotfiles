hl.on("hyprland.start", function()
  --
  hl.exec_cmd("mullvad-vpn")

  -- These might alreday be enabled not sure
  hl.exec_cmd("systemctl --user start hyprpolkitagent")
  -- hl.exec_cmd("systemctl --user start hyprpaper.service")
  hl.exec_cmd("systemctl --user start hypridle.service")

  --
  hl.exec_cmd("hyprcursor")

  --
  hl.exec_cmd("noctalia")
  -- hl.exec_cmd("waybar")
  -- hl.exec_cmd("ashell --config-path ~/.config/ashell/ashell.toml")
  -- hl.exec_cmd("swayosd-server & swaync")
  -- hl.exec_cmd("swaync")
  hl.exec_cmd("nm-applet & blueman-applet & opensnitch-ui")
  hl.exec_cmd("gsr-ui")

  --
  -- hl.exec_cmd("wl-paste --type text --watch cliphist store")
  -- hl.exec_cmd("wl-paste --type image --watch cliphist store")
end)
