local programs = {
  "/usr/lib/pam_kwallet_init",
  "steam -silent",
  "signal-desktop --start-in-tray --password-store=kwallet6",
  "webcord --start-minimized",
  "affine",
  "sleep 3 && hyprctl dispatch 'hl.dsp.window.close({window=\"class:AFFiNE\"})'",
}

hl.on("hyprland.start", function ()
  hl.exec_cmd("hyprpm reload")
  hl.exec_cmd("noctalia")
  hl.exec_cmd("hyprpaper")
  for _,program in pairs(programs) do
    hl.exec_cmd("uwsm app -- " .. program)
  end
end)

