hl.monitor({
  output = "eDP-1",
  mode = "2560x1600@165",
  cm = "dcip3",
  vrr = 2,
  scale = 1.0,
  -- icc = "/usr/share/color/icc/colord/BOE_CQ_______NE160QDM_NZ6.icm"
})

hl.monitor({
  output = "DP-1",
  mode = "2560x1440@240",
  cm = "hdr",
  vrr = 2,
  scale = 1.0,
  bitdepth = 10,
  sdrbrightness = 2.0,
  sdrsaturation = 1.25
})
