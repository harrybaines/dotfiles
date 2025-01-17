-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

--config.colors = require("cyberdream")

config.colors = {
	cursor_bg = "#5eff6c",
}

-- Fonts
--config.font = wezterm.font("CaskaydiaMono NF")
--config.font = wezterm.font("JetBrains Mono")
--config.font = wezterm.font("0xProto")
--config.font = wezterm.font("Dank Mono")
config.font = wezterm.font("CaskaydiaCove NFM")
config.bold_brightens_ansi_colors = true -- Automatically handles bold fonts
config.cursor_blink_rate = 0 -- Keeps the cursor as a static beam

config.font_size = 18
config.line_height = 1.25

-- Colors
--config.color_scheme = "Tokyo Night"
--config.color_scheme = "Sonokai (Gogh)"
config.color_scheme = "Catppuccin Mocha"
--config.color_scheme = "Gruvbox dark, medium (base16)"

config.enable_tab_bar = false

config.initial_rows = 56
config.initial_cols = 180

config.window_decorations = "RESIZE"
config.window_background_opacity = 0.96
--config.macos_window_background_blur = 30

config.default_prog = { "/bin/zsh" }

config.keys = {
	{
		key = "2",
		mods = "OPT",
		action = wezterm.action.SendString("€"),
	},
	{
		key = "3",
		mods = "OPT",
		action = wezterm.action.SendString("#"),
	},
}

-- and finally, return the configuration to wezterm
return config
