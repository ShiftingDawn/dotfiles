local terminal    = "alacritty"
local menu        = "noctalia msg panel-toggle launcher"
local fileManager = "dolphin"
local browser     = "brave"

hl.bind(mainMod .. " + RETURN", hl.dsp.exec_cmd("uwsm app -- " .. terminal))
hl.bind(mainMod .. " + SPACE", hl.dsp.exec_cmd(menu))
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd("uwsm app -- " .. fileManager))
hl.bind(mainMod .. " + SHIFT + RETURN", hl.dsp.exec_cmd("uwsm app -- " .. browser))
