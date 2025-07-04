export TERMINAL=wezterm
export EDITOR=nvim
export SUDO_EDITOR=nvim
export QT_QPA_PLATFORMTHEME=qt6ct
export XDG_CURRENT_DESKTOP=KDE
export XDG_DATA_HOME=/home/kalle/.local/share
export XDG_CONFIG_HOME=/home/kalle/.config

alias ls='eza'
alias l='eza -lF'
alias ll='eza -alF'
alias la='eza -aF'
alias lt='eza -F --tree -L'
alias grep='grep --color=auto'
alias cat='bat'
alias ..='cd ..'
alias fman='compgen -c | fzf | xargs man'
alias vim='nvim'
alias cl='clear'
alias grep='rg'
alias cd='z'

#fortune | cowsay -f sheep
export LD_LIBRARY_PATH=/usr/local/lib:${LD_LIBRARY_PATH}
