require("modules/program_aliases")
MainMod = "SUPER"

hl.bind(MainMod .. " + Q", hl.dsp.exec_cmd(Terminal))
hl.bind(MainMod .. " + E", hl.dsp.exec_cmd(FileExplorer))
hl.bind(MainMod .. " + R", hl.dsp.exec_cmd(Menu))
hl.bind(MainMod .. " + L", hl.dsp.exec_cmd(Lock))
hl.bind(MainMod .. " + M", hl.dsp.exec_cmd(PowerMenu))
hl.bind(MainMod .. " + SPACE", hl.dsp.exec_cmd(Clipboard))
hl.bind(MainMod .. " + SHIFT + N", hl.dsp.exec_cmd("swaync-client -t -sw"))


hl.bind(MainMod .. " + C", hl.dsp.window.close())
hl.bind(MainMod .. " + V", hl.dsp.window.float({ action = "toggle" }))
hl.bind(MainMod .. " + F", hl.dsp.window.fullscreen({ mode = "maximized", action = "toggle" }))
hl.bind(MainMod .. " + F11", hl.dsp.window.fullscreen({ mode = "fullscreen", action = "toggle" }))




-- Switch workspaces with mainMod + [0-9]
-- Move active window to a workspace with mainMod + SHIFT + [0-9]
for i = 1, 10 do
  local key = i % 10 -- 10 maps to key 0
  hl.bind(MainMod .. " + " .. key, hl.dsp.focus({ workspace = i }))
  hl.bind(MainMod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
end

-- Window handling
hl.bind(MainMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
-- hl.bind(MainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Media controls
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("noctalia msg volume-up"),
  { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("noctalia msg volume-down"),
  { locked = true, repeating = true })
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("noctalia msg volume-mute"),
  { locked = true, repeating = true })
-- hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd("noctalia msg microphone-mute"),
--   { locked = true, repeating = true })
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("noctalia msg brightness-up"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("noctalia msg brightness-down"),
  { locked = true, repeating = true })
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { locked = true })


-- Scrolling layout
hl.bind(MainMod .. " + A", hl.dsp.layout("move -col"))
hl.bind(MainMod .. " + D", hl.dsp.layout("move +col"))
--    Shift windows
hl.bind(MainMod .. " + SHIFT + A", hl.dsp.layout("swapcol l"))
hl.bind(MainMod .. " + SHIFT + D", hl.dsp.layout("swapcol r"))
--    Resize clients
hl.bind(MainMod .. " + MINUS", hl.dsp.layout("colresize -conf"))
hl.bind(MainMod .. " + EQUAL", hl.dsp.layout("colresize +conf"))
hl.bind(MainMod .. " + mouse:275", hl.dsp.layout("colresize -conf"))
hl.bind(MainMod .. " + mouse:276", hl.dsp.layout("colresize +conf"))
