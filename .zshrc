# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=100000
setopt autocd nobeep extendedglob nomatch notify
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/kalle/.zshrc'
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'
zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'ls --color $realpath'

autoload -Uz compinit
compinit
# End of lines added by compinstall

source /home/kalle/.antidote/antidote.zsh

antidote load

export PATH="$PATH:/home/kalle/.local/kitty.app/bin"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

source ~/.kallezsh.sh

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
eval "$(zoxide init zsh)"


# >>> juliaup initialize >>>

# !! Contents within this block are managed by juliaup !!

path=('/home/kalle/.juliaup/bin' $path)
export PATH

# <<< juliaup initialize <<<

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/kalle/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
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


## [Completion]
## Completion scripts setup. Remove the following line to uninstall
[[ -f /home/kalle/.dart-cli-completion/zsh-config.zsh ]] && . /home/kalle/.dart-cli-completion/zsh-config.zsh || true
## [/Completion]

export LD_LIBRARY_PATH=/usr/local/lib:${LD_LIBRARY_PATH}
#export QT_QPA_PLATFORM=xcb
