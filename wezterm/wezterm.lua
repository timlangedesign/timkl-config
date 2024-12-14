-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration
local config = wezterm.config_builder()

-- Dynamic configurations based on the host or OS
local hostname = wezterm.hostname()
local is_mac = wezterm.target_triple == "x86_64-apple-darwin" or wezterm.target_triple == "aarch64-apple-darwin"

-- Common configuration
config.color_scheme = "Tokyo Night"
config.font = wezterm.font("OperatorMono Nerd Font")
config.font_size = is_mac and 18 or 20 -- Smaller font for macOS
config.enable_tab_bar = false
config.window_decorations = "RESIZE"
config.window_background_opacity = 0.85
config.macos_window_background_blur = is_mac and 18 or nil

-- Host-specific configurations
if hostname == "Laptop-Tim1" then
	config.font_size = 18
	config.color_scheme = "3024 (dark) (terminal.sexy)"
elseif hostname == "Laptop-Tim2" then
	config.font_size = 20
	config.color_scheme = "Tokyo Night"
end

-- Default program to run at startup
config.default_prog = {
	"/bin/zsh",
	"-c",
	[[
    if [ -f ~/.zshrc ]; then
      source ~/.zshrc
    fi
    clear
    echo 'Welcome to WezTerm, Tim!'
    timkl
    exec /bin/zsh
  ]],
}

-- Keybindings (if needed)
config.keys = {
	{ key = "r", mods = "CTRL|SHIFT", action = wezterm.action.ReloadConfiguration },
}

-- Return the configuration to wezterm
return config
