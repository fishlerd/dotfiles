set -gx fish_greeting "hi fish"

if type -q nvim
    set -gx EDITOR nvim
    set -gx VISUAL nvim
    set -gx MANPAGER "nvim +Man!"
    alias vimdiff="nvim -d"
end

# Other git aliases are in git config
alias g="git"
alias gg="g a .; and g c -a"
# alias lg="lazygit"
alias n="nvim"
alias v="nvim"
alias t="eza --tree"
alias ta="eza --tree -a"
alias l="eza -al --icons"
alias ld="eza -ald */"
#alias vim="nvim"
alias z="v ~/.config/nvim/"
alias ll="ls -alh"
alias c="clear"

# Start an SSH agent if required, if not, connect to it.
# initialise_ssh_agent

# Local config.
if [ -f ~/.config.fish ]
    source ~/.config.fish
end

# start starship in fish
starship init fish | source

# thefuck --alias | source

# Created by `pipx` on 2024-07-22 06:32:22
set PATH $PATH /Users/fish/.local/bin
