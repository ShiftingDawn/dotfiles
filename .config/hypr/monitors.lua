hl.monitor({
  output   = "HDMI-A-1",
  mode     = "3840x2160@120",
  position = "0x0",
  scale    = 1.5,
})

hl.monitor({
  output   = "DP-1",
  mode     = "2560x1440@120",
  position = "2560x0",
  scale = 1.25
})

hl.config({
  xwayland = {
    force_zero_scaling = true
  }
})
