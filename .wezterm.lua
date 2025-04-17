-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
-- config.color_scheme = "Catppuccin Latte"
config.color_scheme = "Catppuccin Mocha"

config.colors = {
	background = "Black", -- override the background color only
	-- background = "#1a1a20", -- override the background color only
}

config.colors = {
	-- foreground = "#d0d0d0",
	-- background = "1c1c1c",
	-- cursor_bg = "#d0d0d0",
	-- cursor_fg = "#1c1c1c",
	-- selection_bg = "#44475a",
	-- selection_fg = "#f8f8f2",
	-- ansi = { "#1c1c1c", "#ff5f5f", "#5fff87", "#ffff87", "#5f87ff", "#ff87ff", "#5fffff", "#ffffff" },
	-- brights = { "#444444", "#ff8787", "#87ffaf", "#ffffaf", "#87afff", "#ffafff", "#87ffff", "#ffffff" },
	foreground = "#c7c7c7",
	background = "#000000",
	cursor_bg = "#f5b77d",
	cursor_fg = "#feffff",
	selection_bg = "#464c91",
	selection_fg = "#f4f4f4",
	ansi = { "#616161", "#f08978", "#c3f884", "#fefdc8", "#afd4fa", "#f295f7", "#d0d1fa", "#f1f1f1" },
	brights = { "#8e8e8e", "#f6c6bf", "#ddfbc0", "#fefdd9", "#c8e2fc", "#f5b5f9", "#e5e6fc", "#feffff" },
}

-- change font
config.font = wezterm.font("MesloLGS NF", { weight = "Regular", stretch = "Normal" })
-- set fontsize
config.font_size = 14

-- set transperacy
config.window_background_opacity = 0.7

-- Window customization
config.enable_tab_bar = true
config.hide_tab_bar_if_only_one_tab = true
config.window_decorations = "RESIZE"
-- config.macos_window_background_blur = 20

config.use_fancy_tab_bar = true
-- Padding
-- config.window_padding = {
-- 	left = 10,
-- 	right = 10,
-- 	top = 8,
-- 	bottom = 8,
-- }

-- Scrollback
config.scrollback_lines = 10000

-- Disable audible bell
config.audible_bell = "Disabled"

-- Key bindings
config.keys = {
	-- Split horizontally (left/right) with CTRL+SHIFT+ALT+/
	{
		key = "?",
		mods = "CTRL|SHIFT|ALT",
		action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},

	-- Split vertically (top/bottom) with CTRL+SHIFT+ALT+,
	{
		key = ">",
		mods = "CTRL|SHIFT|ALT",
		action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
	},
	-- vim like navigation
	{
		key = "h",
		mods = "CTRL|SHIFT|ALT",
		action = wezterm.action.ActivatePaneDirection("Left"),
	},
	{
		key = "l",
		mods = "CTRL|SHIFT|ALT",
		action = wezterm.action.ActivatePaneDirection("Right"),
	},
	{
		key = "k",
		mods = "CTRL|SHIFT|ALT",
		action = wezterm.action.ActivatePaneDirection("Up"),
	},
	{
		key = "j",
		mods = "CTRL|SHIFT|ALT",
		action = wezterm.action.ActivatePaneDirection("Down"),
	},
}
-- and finally, return the configuration to wezterm
return config
