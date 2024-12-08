-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

config.color_scheme = '3024 (dark) (terminal.sexy)'
config.font = wezterm.font("OperatorMono Nerd Font")
config.font_size = 20   

config.enable_tab_bar = false

config.window_decorations = "RESIZE"

config.window_background_opacity = 0.85
config.macos_window_background_blur = 24

-- and finally, return the configuration to wezterm
return config