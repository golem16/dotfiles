hl.on("hyprland.start", function()
  --
  hl.exec_cmd("noctalia")
  -- hl.exec_cmd("snappy-switcher --daemon")

  -- These might alreday be enabled not sure
  hl.exec_cmd("systemctl --user start hyprpolkitagent")
  -- hl.exec_cmd("systemctl --user start hyprpaper.service")
  hl.exec_cmd("systemctl --user start hypridle.service")

  --
  hl.exec_cmd("dispwin /usr/share/color/icc/colord/BOE_CQ_______NE160QDM_NZ6.icm")

  --
  hl.exec_cmd("hyprcursor")

  --
  hl.exec_cmd("nm-applet & blueman-applet")
  hl.exec_cmd("gsr-ui")

  --
  hl.exec_cmd("sleep 4 && opensnitch-ui")
  hl.exec_cmd("sleep 4 && mullvad-vpn")

  --
  -- hl.exec_cmd("wl-paste --type text --watch cliphist store")
  -- hl.exec_cmd("wl-paste --type image --watch cliphist store")
end)
