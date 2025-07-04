export TERMINAL=wezterm
export EDITOR=nvim
export SUDO_EDITOR=nvim
export QT_QPA_PLATFORMTHEME=qt6ct
export XDG_CURRENT_DESKTOP=KDE

. "$HOME/.cargo/env"

export SUDO_EDITOR=nvim
alias ls='eza -F'
alias la='eza -aF'
alias ll='eza -lF'
alias l='eza -alF'
alias lt='eza -F --tree -L'
alias ..='cd ..'
alias cat='bat'
alias vim='nvim'
alias hx='helix'

typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet

alias fman='bash -c "compgen -c" | fzf | xargs man'
alias update='paru && flatpak upgrade && flatpak update && brew update && brew upgrade'

function y() {
    local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
    yazi "$@" --cwd-file="$tmp"
    if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
        builtin cd -- "$cwd"
    fi
    rm -f -- "$tmp"
}

export LD_LIBRARY_PATH=/usr/local/lib:${LD_LIBRARY_PATH}
