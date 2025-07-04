if status is-interactive
    # Commands to run in interactive sessions can go here
    zoxide init fish | source
    eval (/home/linuxbrew/.linuxbrew/bin/brew shellenv)
end

set -gx SUDO_EDITOR helix
set -gx EDITOR helix
set -gx LD_LIBRARY_PATH /usr/local/lib:{$LD_LIBRARY_PATH}

fish_add_path /home/kalle/.juliaup/bin $PATH

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /home/kalle/miniconda3/bin/conda
    eval /home/kalle/miniconda3/bin/conda "shell.fish" hook $argv | source
else
    if test -f "/home/kalle/miniconda3/etc/fish/conf.d/conda.fish"
        . "/home/kalle/miniconda3/etc/fish/conf.d/conda.fish"
    else
        set -x PATH /home/kalle/miniconda3/bin $PATH
    end
end
# <<< conda initialize <<<
