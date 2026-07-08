local programs = {
  "/usr/lib/pam_kwallet_init",
  "hyprpm reload",
  "noctalia",
  "hyprpaper",
  "steam -silent",
  "signal-desktop --start-in-tray --password-store=kwallet6",
  "webcord --start-minimized",
  "affine",
  "sleep 3 && hyprctl dispatch 'hl.dsp.window.close({window=\"class:AFFiNE\"})'",
}

hl.on("hyprland.start", function ()
  for _,program in pairs(programs) do
    hl.exec_cmd(program)
  end
end)

