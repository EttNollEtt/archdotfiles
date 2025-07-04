local wezterm = require("wezterm")

local config = wezterm.config_builder()
local act = wezterm.action

-- Config here
config.color_scheme = "Navy and Ivory (terminal.sexy)"

config.keys = {
	{ key = "V", mods = "CTRL", action = act.PasteFrom("Clipboard") },
}

config.hide_tab_bar_if_only_one_tab = true

config.window_background_opacity = 0.8

config.window_close_confirmation = "NeverPrompt"

return config
