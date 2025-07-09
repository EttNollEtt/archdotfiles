-- Pull in the wezterm API
local wezterm = require("wezterm")
local act = wezterm.action

-- This will hold the configuration.
--local config = wezterm.config_builder()
local config = {}

-- This is where you actually apply your config choices

config.enable_wayland = false
-- For example, changing the color scheme:
--config.color_scheme = "Navy and Ivory (terminal.sexy)"
config.color_scheme = "rose-pine"
--config.color_scheme = "Rosé Pine (base16)"

config.window_close_confirmation = "NeverPrompt"

config.hide_tab_bar_if_only_one_tab = true

config.window_background_opacity = 0.9

TMUX = { "tmux", "new", "-As1" }
config.default_prog = {"/usr/bin/fish", "-i"}

-- and finally, return the configuration to wezterm
return config
