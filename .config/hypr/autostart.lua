local programs = {  
  "steam -silent",
  "signal-desktop --start-in-tray",
  "discord --start-minimized",
  "affine && hyprctl dispatch 'hl.dsp.window.close({window=\"class:AFFiNE\"})'",
}

hl.on("hyprland.start", function ()
  hl.exec_cmd("noctalia")
  hl.exec_cmd("hyprpaper")
  for _,program in pairs(programs) do
    hl.exec_cmd("uwsm app -- " .. program)
  end
end)

