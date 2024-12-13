-- Pull in the wezterm API
local wezterm = require("wezterm")

-- Create a configuration
local config = wezterm.config_builder()

-- Dynamic configurations based on OS or hostname
local hostname = wezterm.hostname()
local is_mac = wezterm.target_triple == "x86_64-apple-darwin" or wezterm.target_triple == "aarch64-apple-darwin"

-- General settings
config.color_scheme = "Tokyo Night"
config.font = wezterm.font("OperatorMono Nerd Font")
config.font_size = is_mac and 18 or 20 -- Smaller font for macOS

config.enable_tab_bar = false
config.window_decorations = "RESIZE"
config.window_background_opacity = 0.85
config.macos_window_background_blur = is_mac and 24 or nil

-- Safe startup shell
config.default_prog = {
	"/bin/zsh",
	"-c",
	[[
    if [ -f ~/.zshrc ]; then
      source ~/.zshrc
    fi
    clear
    echo 'Welcome to WezTerm!'
    exec /bin/zsh
  ]],
}

-- Return the configuration to wezterm
return config
