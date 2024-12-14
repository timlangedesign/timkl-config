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

-- Hostname-Specific Configurations
local hostname = wezterm.hostname()
local startup_message = ""
if hostname == "ITSG009341-MAC" then
	startup_message = "*** Hej Tim, arbejd arbejd! Qapla! Sic itur ad astra. ***"
else
	startup_message = "*** Hi Tim, let your spirit guide you! Qapla! Ad astra per aspera. ***"
end

-- Default Program to Run at Startup
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
    if type timkl &> /dev/null; then
      timkl
    else
      echo "Warning: 'timkl' command not found!"
    fi
    exec /bin/zsh
  ]],
		startup_message
	),
}

return config

