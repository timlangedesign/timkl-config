-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices
config.color_scheme = "Tokyo Night"
config.font = wezterm.font("OperatorMono Nerd Font")
config.font_size = 18

config.enable_tab_bar = false

config.window_decorations = "RESIZE"

config.window_background_opacity = 0.87
config.macos_window_background_blur = 18

-- and finally, return the configuration to wezterm
return config
