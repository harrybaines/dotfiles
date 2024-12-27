-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

--config.colors = require("cyberdream")

--config.colors = {
--cursor_bg = "#5eff6c",
--foreground = "#ffffff",
--background = "#16181a",
--cursor_border = "#ffffff",
--selection_fg = "#ffffff",
--selection_bg = "#3c4048",
--scrollbar_thumb = "#16181a",
--split = "#16181a",
--ansi = { "#16181a", "#ff6e5e", "#5eff6c", "#f1ff5e", "#5ea1ff", "#bd5eff", "#5ef1ff", "#ffffff" },
--brights = { "#3c4048", "#ff6e5e", "#5eff6c", "#f1ff5e", "#5ea1ff", "#bd5eff", "#5ef1ff", "#ffffff" },
--indexed = { [16] = "#ffbd5e", [17] = "#ff6e5e" },
--}

--config.font = wezterm.font("CaskaydiaMono NF")
config.font = wezterm.font("JetBrains Mono")
config.font_size = 18
config.line_height = 1.25

config.color_scheme = "Sonokai (Gogh)"
--config.color_scheme = "Catppuccin Mocha"
config.enable_tab_bar = false

config.initial_rows = 40
config.initial_cols = 180

config.window_decorations = "RESIZE"
--config.window_background_opacity = 0.9
config.macos_window_background_blur = 30

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
