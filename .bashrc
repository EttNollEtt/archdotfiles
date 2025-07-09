#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
PS1='[\u@\h \W]\$ '

# >>> juliaup initialize >>>

# !! Contents within this block are managed by juliaup !!

case ":$PATH:" in
    *:/home/kalle/.juliaup/bin:*)
        ;;

    *)
        export PATH=/home/kalle/.juliaup/bin${PATH:+:${PATH}}
        ;;
esac

# <<< juliaup initialize <<<

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/kalle/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/kalle/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/kalle/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/kalle/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# Important PATHS
. "$HOME/.cargo/env"
source ~/.local/share/blesh/ble.sh
eval "$(zoxide init bash)"
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
set -o vi

# CUSTOM CONFIG
if [ -f "/home/kalle/.kallerc.sh" ]; then
    . ~/.kallerc.sh
fi
