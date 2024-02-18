local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.window_decorations = "NONE"
config.color_scheme = "Catppuccin Mocha"

return config
