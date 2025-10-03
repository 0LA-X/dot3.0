# ====== Root Zsh Config ======
export EDITOR="nvim"
export VISUAL="nvim"
export SYSTEMD_EDITOR="nvim"

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

alias vi='nvim'
alias vim='nvim'
alias sudo-nvim='sudo env WAYLAND_DISPLAY=$WAYLAND_DISPLAY XDG_RUNTIME_DIR=$XDG_RUNTIME_DIR HOME=/root nvim'

alias pacman='sudo pacman'

alias update-grub='sudo grub-mkconfig -o /boot/grub/grub.cfg'

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
export STARSHIP_CONFIG="/root/.config/starship.toml"

autoload -Uz compinit
compinit

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=#00ff00'
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
