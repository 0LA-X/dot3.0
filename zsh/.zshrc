# Launch TMUX on terminal startup
if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
  tmux attach-session -t main || tmux new-session -s main
fi

#[ Fun stuff ]
clear && pokego -r 1,3,6 -no-title
# fastfetch
# pokego --name eevee -no-title -s

# Enable vi mode
bindkey -v
export KEYTIMEOUT=1

#[ Source oh-my-zsh ]
export ZSH="$HOME/.oh-my-zsh"

#[ oh-my-zsh plugins : sudo]
plugins=(
  git
  sudo
  zsh-vi-mode
  zsh-autosuggestions
  zsh-interactive-cd
)

# Load custom completions
fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src
autoload -U compinit && compinit

#[ Load Oh My Zsh ]
source "$ZSH/oh-my-zsh.sh"

#[ Add cargo to path ]
export PATH="$HOME/.cargo/bin:$PATH"

export EDITOR="nvim"
export VISUAL="nvim"
export SYSTEMD_EDITOR="nvim"

export TERMINAL="kitty"

#[ Xcompose IG ¯\_(ツ)_/¯]
export GTK_IM_MODULE=xim
export QT_IM_MODULE=xim
export XMODIFIERS=@im=none

#[ Aliases & Shortcuts ] 
# -- Navigation
alias .='z ../'
alias ..='z ../../'
alias ...='z ../../../'
alias ....='z ../../../../'

# -- File listing (eza)
alias c='clear'
alias x='exit'
alias l='eza -lh --icons=auto'
alias ls='eza -G --icons=auto'
alias lsa='eza -Ga --icons=auto'
alias ll='eza -lha --icons=auto --sort=name --group-directories-first'
alias ld='eza -lhD --icons=auto'
alias lt='eza --icons=auto --tree'

#[ WIFI ]
alias wifilist='nmcli device wifi list'
alias wifiscan='nmcli device wifi list --rescan yes'
alias wificonnect='nmcli device wifi connect --ask'

alias vi='nvim'
alias vim='sudo nvim'
alias sudo-nvim='sudo env WAYLAND_DISPLAY=$WAYLAND_DISPLAY XDG_RUNTIME_DIR=$XDG_RUNTIME_DIR HOME=/root nvim'

alias pacman='sudo pacman'
alias mkdir='mkdir -p'

alias update-grub='sudo grub-mkconfig -o /boot/grub/grub.cfg'

alias gparted='sudo -E gparted'

alias yt-480='yt-dlp -f "bestvideo[height=480]+bestaudio/best[height=480]"'
alias yt-720='yt-dlp -f "bestvideo[height=720]+bestaudio/best[height=720]"'

# -- User session management
alias exit-user='pkill -TERM -u $USER'
alias logout-user='pkill Hyprland || pkill tmux || loginctl terminate-user $USER'

eval "$(fzf --zsh)"
eval "$(zoxide init zsh)"

# [ Zsh History Options ]
HISTSIZE=6000
SAVEHIST=$HISTSIZE
HISTFILE=~/.zsh_history
HIST_STAMPS="mm/dd/yyyy"

setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups

eval "$(starship init zsh)"

# Alt colors #BFFF00 #77DD77 #FF69B4 #B026FF
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#B2FFFF"

# Load zsh-syntax-highlighting LAST
source "${ZSH_CUSTOM:-$ZSH/custom}/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
