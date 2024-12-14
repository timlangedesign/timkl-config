# ----------------------------------------
# Homebrew Initialization
# ----------------------------------------
if [[ -d "/opt/homebrew" ]]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# ----------------------------------------
# Zoxide Setup
# ----------------------------------------
if which zoxide &>/dev/null; then
  eval "$(zoxide init zsh)"
else
  echo "Warning: Zoxide not found. Install it using Homebrew: brew install zoxide"
fi

# ----------------------------------------
# Machine-Specific Configurations
# ----------------------------------------
case "$(hostname)" in
  "ITSG009341-MAC")
    alias work-alias="some-work-specific-command"
    export WORK_ENV_VAR="value-for-work"
    ;;
  "Tims-MacBook-Pro-2.local")
    alias personal-alias="some-personal-specific-command"
    export PERSONAL_ENV_VAR="value-for-personal"
    ;;
esac

# ----------------------------------------
# Alias Definitions
# ----------------------------------------
# Custom Commands and Scripts
alias timkl="~/.config/scripts/timkl"
alias gif="~/.config/scripts/gif"
alias cd="z"                            # Use Zoxide for navigation
alias zs="source ~/config/zsh/.zshrc"            # Reload .zshrc
alias ze="nvim ~/config/zsh/.zshrc"                # Edit .zshrc with Neovim
alias ll="ls -a"                        # Show all files
alias ls="eza --icons=always"           # Use eza with icons
alias c="clear"

# YouTube Download Aliases
alias yt-mp4='yt-dlp -f bestvideo+bestaudio/best -o "%(title)s.%(ext)s" --merge-output-format mp4'
alias yt-mp3='yt-dlp -x --audio-format mp3 -o "%(title)s.%(ext)s"'
alias yt-playlist='yt-dlp -o "%(playlist)s/%(playlist_index)s - %(title)s.%(ext)s"'
alias yt-shorts='yt-dlp -f bestvideo+bestaudio/best -o "%(title)s.%(ext)s" --merge-output-format mp4 $(pbpaste | sed "s/shorts\//watch?v=/")'
alias yt-update='brew update && brew upgrade yt-dlp'

# Manual for YouTube aliases
yt-man() {
  echo "YouTube-dl Custom Alias Manual:"
  echo ""
  echo "yt-mp4   -> Download video as MP4"
  echo "yt-mp3   -> Download audio as MP3"
  echo "yt-playlist -> Download playlist videos"
  echo "yt-shorts -> Download YouTube Shorts as MP4"
  echo "yt-update -> Update yt-dlp"
}

# ----------------------------------------
# Powerlevel10k Instant Prompt
# ----------------------------------------
typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet
export ZSH_DISABLE_COMPFIX="true"

# ----------------------------------------
# Theme and Plugin Setup
# ----------------------------------------
# ZSH_THEME="robbyrussell"
# plugins=(git)

# ----------------------------------------
# History Configuration
# ----------------------------------------
HIST_STAMPS="mm/dd/yyyy"
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=$HOME/.cache/zsh/history

# ----------------------------------------
# PATH Configuration
# ----------------------------------------
export PATH="$HOME/.config/scripts:$HOME/bin:$HOME/.local/bin:$HOME/Desktop/flutter_dev/flutter/bin:$HOME/Developer/PlaydateSDK/bin:/opt/homebrew/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

# ----------------------------------------
# Powerlevel10k Theme
# ----------------------------------------
source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh

# ----------------------------------------
# Plugins
# ----------------------------------------
# [[ -f /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh ]] && source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
# [[ -f /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]] && source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# ----------------------------------------
# FZF Configuration
# ----------------------------------------
export FZF_DEFAULT_COMMAND="fd --hidden --strip-cwd-prefix --exclude .git"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd --type=d --hidden --exclude .git"

# ----------------------------------------
# Environment Variables
# ----------------------------------------
if [[ -f ~/.config/.env ]]; then
  export $(grep -v '^#' ~/.config/.env | xargs)
fi

export PLAYDATE_SDK_PATH="$HOME/Developer/PlaydateSDK"

# ----------------------------------------
# History Behavior
# ----------------------------------------
HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify
