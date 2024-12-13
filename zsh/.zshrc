# Enable Powerlevel10k instant prompt if available
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH_DISABLE_COMPFIX="true"

# ----------------------------------------
# Theme and Plugin Setup
# ----------------------------------------
ZSH_THEME="robbyrussell"
plugins=(git)

# ----------------------------------------
# Update Configuration
# ----------------------------------------
DISABLE_UPDATE_PROMPT="true"
export UPDATE_ZSH_DAYS=3

# ----------------------------------------
# History Configuration
# ----------------------------------------
HIST_STAMPS="mm/dd/yyyy"
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.config/zsh/.zhistory

# ----------------------------------------
# Key Bindings and Modes
# ----------------------------------------
# Enable vi mode
bindkey -v
export KEYTIMEOUT=1

# Use vim keys in tab complete
bindkey -v '^?' backward-delete-char

# Change cursor shape for different vi modes
function zle-keymap-select {
  if [[ ${KEYMAP} == vicmd ]]; then
    echo -ne '\e[1 q' # Block cursor for command mode
  else
    echo -ne '\e[5 q' # Beam cursor for insert mode
  fi
}
zle -N zle-keymap-select
zle-line-init() {
  zle -K viins
  echo -ne "\e[5 q"
}
zle -N zle-line-init
preexec() { echo -ne '\e[5 q'; }

# ----------------------------------------
# Aliases
# ----------------------------------------
alias c="clear"
alias zs="source ~/.config/zsh/.zshrc"              # Reload .zshrc
alias ze="nvim ~/.config/zsh/.zshrc"                # Edit .zshrc with Neovim
alias ll="ls -a"                                    # Show all files
alias ls="eza --icons=always"                       # Use eza with icons
alias cd="z"                                        # Use zoxide for navigation
alias organize='~/.config/scripts/organize.sh'      # Organize files
alias stitch='mv ~/Desktop/1.png ~/.config/scripts && \
              mv ~/Desktop/2.png ~/.config/scripts && \
              cd ~/.config/scripts && ./stitch-2screens.sh && open flow-comp.png'
alias herzog="source venv/bin/activate && \
              export OPENAI_API_KEY=$OPENAI_API_KEY && \
              export ELEVEN_API_KEY=$ELEVEN_API_KEY"
alias gif-convert="~/.config/scripts/gif"           # Alias for GIF conversion script

# ----------------------------------------
# PATH Configuration
# ----------------------------------------
case "$(uname)" in
  Darwin)
    # macOS specific configuration
    export PATH="$HOME/.config/scripts:$HOME/bin:$HOME/Desktop/flutter_dev/flutter/bin:$HOME/.local/bin:/opt/homebrew/bin:$(brew --prefix ruby)/bin:$PATH"
    source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme
    ;;
  Linux)
    # Linux specific configuration
    export PATH="$HOME/.config/scripts:$HOME/bin:$HOME/.local/bin:/usr/bin:$PATH"
    source /usr/share/powerlevel10k/powerlevel10k.zsh-theme
    ;;
esac

# ----------------------------------------
# Zoxide Setup
# ----------------------------------------
eval "$(zoxide init zsh)"

# ----------------------------------------
# Powerlevel10k Theme
# ----------------------------------------
[[ ! -f ~/.config/p10k/.p10k.zsh ]] || source ~/.config/p10k/.p10k.zsh

# ----------------------------------------
# Plugins
# ----------------------------------------
[[ -f /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh ]] && source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
[[ -f /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]] && source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# ----------------------------------------
# Environment Variables
# ----------------------------------------
if [[ -f ~/.config/zsh/.env ]]; then
  export $(grep -v '^#' ~/.config/zsh/.env | xargs)
fi
export PLAYDATE_SDK_PATH="${PLAYDATE_SDK_PATH:-$HOME/Developer/PlaydateSDK}"

# ----------------------------------------
# History Behavior
# ----------------------------------------
HISTFILE=$HOME/.config/zsh/.zhistory
SAVEHIST=1000
HISTSIZE=999
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify

# ----------------------------------------
# FZF Configuration
# ----------------------------------------
export FZF_DEFAULT_COMMAND="fd --hidden --strip-cwd-prefix --exclude .git"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd --type=d --hidden --exclude .git"

# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh
