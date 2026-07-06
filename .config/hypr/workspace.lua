-- Ref https://wiki.hypr.land/Configuring/Basics/Workspace-Rules/
hl.workspace_rule({ workspace = 1, monitor = "HDMI-A-1", persistent = true })
hl.workspace_rule({ workspace = 2, monitor = "HDMI-A-1", persistent = true })
hl.workspace_rule({ workspace = 3, monitor = "HDMI-A-1", persistent = true })
hl.workspace_rule({ workspace = 4, monitor = "HDMI-A-1", persistent = true })
hl.workspace_rule({ workspace = 5, monitor = "HDMI-A-1", persistent = true })
hl.workspace_rule({ workspace = 6, monitor = "DP-1", persistent = true })
hl.workspace_rule({ workspace = 7, monitor = "DP-1", persistent = true })
hl.workspace_rule({ workspace = 8, monitor = "DP-1", persistent = true })
hl.workspace_rule({ workspace = 9, monitor = "DP-1", persistent = true })
hl.workspace_rule({ workspace = 10, monitor = "DP-1", persistent = true })
hl.workspace_rule({ workspace = "name:fullscreen" })

---------------------
---- KEYBINDINGS ----
---------------------

for i = 1, 10 do
    local key = i % 10 -- 10 maps to key 0
    hl.bind(mainMod .. " + " .. key,             hl.dsp.focus({ workspace = i}))
    hl.bind(mainMod .. " + SHIFT + " .. key,     hl.dsp.window.move({ workspace = i }))
end

-- Scroll through existing workspaces with mainMod + scroll
hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up",   hl.dsp.focus({ workspace = "e-1" }))

-- Example special workspace (scratchpad)
hl.bind(mainMod .. " + S",         hl.dsp.workspace.toggle_special("magic"))
hl.bind(mainMod .. " + SHIFT + S", hl.dsp.window.move({ workspace = "special:magic" }))

---------------------
---- LAYER RULES ----
---------------------

hl.layer_rule({
  name = "noctalia",
  match = {
    namespace = "^noctalia-(bar-.+|notification|dock|panel|attached-panel|osd)$",
  },
  no_anim = true,
  ignore_alpha = 0.5,
  blur = true,
  blur_popups = true,
})
