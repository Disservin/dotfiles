local wezterm = require("wezterm")

local config = {}
-- Use config builder object if possible
if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- Settings
config.scrollback_lines = 10000
config.enable_scroll_bar = true

config.colors = {
	-- The default text color
	foreground = "#CACACA",
	-- The default background color
	background = "#171717",

	ansi = {
		"#000000", -- black
		"#ff615a", -- red
		"#b1e969", -- green
		"#ebd99c", -- yellow
		"#5da9f6", -- blue
		"#e86aff", -- magenta
		"#82fff7", -- cyan
		"#dedacf", -- white
	},
	brights = {
		"#313131", -- black bright
		"#f58c80", -- red bright
		"#ddf88f", -- green bright
		"#eee5b2", -- yellow bright
		"#a5c7ff", -- blue bright
		"#ddaaff", -- magenta bright
		"#b7fff9", -- cyan bright
		"#ffffff", -- white bright
	},

	cursor_bg = "#fde68a",
	cursor_fg = "black",
	cursor_border = "#52ad70",
}
config.default_cursor_style = "SteadyBar"
config.font = wezterm.font({ family = "JetBrainsMono Nerd Font", scale = 1.0 })
config.harfbuzz_features = { 'calt=0', 'clig=0', 'liga=0' }

config.window_background_opacity = 0.9
config.window_decorations = "RESIZE" -- doesnt work on ubuntu 23
config.window_close_confirmation = "AlwaysPrompt"
config.default_workspace = "main"

config.inactive_pane_hsb = {
	saturation = 0.24,
	brightness = 0.5,
}

config.keys = {
	{
		key = "w",
		mods = "CTRL",
		action = wezterm.action.CloseCurrentPane({ confirm = false }),
	},
	{
		key = "t",
		mods = "CTRL",
		action = wezterm.action.SpawnTab("CurrentPaneDomain"),
	},
}

config.use_fancy_tab_bar = false
config.tab_bar_at_bottom = false

return config
