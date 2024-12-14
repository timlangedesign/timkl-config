local wezterm = require("wezterm")

local config = wezterm.config_builder()

-- General Configurations
config.color_scheme = "Tokyo Night"
config.font = wezterm.font("OperatorMono Nerd Font")
config.font_size = 21
config.enable_tab_bar = false
config.window_decorations = "RESIZE"
config.window_background_opacity = 0.85
config.macos_window_background_blur = 18

-- Hostname-Specific Startup Messages
local hostname = wezterm.hostname()
local startup_message = ""

if hostname == "ITSG009341-MAC" then
	startup_message = "*** Work configuration. ***"
elseif hostname == "Tims-MacBook-Pro-2.local" then
	startup_message = "*** Personal configuration. ***"
else
	startup_message = "*** No device specific configuration. ***"
end

-- Default Program to Start Zsh
config.default_prog = {
	"/bin/zsh",
	"-c",
	string.format(
		[[
    if [ -f ~/.zshrc ]; then
      source ~/.zshrc
    fi
    clear
    echo '%s'
    if [ -x ~/.config/scripts/timkl ]; then
      ~/.config/scripts/timkl
    else
      echo "Warning: 'timkl' script not found or not executable!"
    fi
    exec /bin/zsh
  ]],
		startup_message
	),
}

return config
