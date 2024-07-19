
#  _               _
# | |             | |
# | |__   __ _ ___| |__
# | '_ \ / _` / __| '_ \
# | |_) | (_| \__ \ | | |
# |_.__/ \__,_|___/_| |_|

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Manpager
export MANPAGER="less"

# Starship
export STARSHIP_CONFIG=~/.config/starship/starship.toml

# ALIASES

alias ..='cd ../'
alias ...='cd ../../'
alias ....='cd ../../../'

alias ls='lsd'
alias la='lsd -a'
alias ll='lsd -al'
alias lt='lsd -d --tree'

alias mkdir='mkdir -v'
alias rmdir='rm -rvI'
alias mk='touch'
alias rm='rm -vi'
alias cp='cp -vi'
alias mv='mv -vi'

alias df='df -h'
alias cat='bat --color=always'
alias fzf='fzf --preview "bat --color=always --style=numbers --line-range=:500 {}"'

alias nay='yay -Rns'
alias ope='yay -Rns (yay -Qtdq)'

alias git-aliases='rg git ~/dotfiles/.bashrc'

alias add='git add'
alias stage='git add --all'
alias commit='git commit --message'
alias save='git add --all && git commit --message'
alias diff='git diff --staged'
alias revert='git revert'

alias branch='git branch'
alias delete='git branch --delete'
alias checkout='git checkout'
alias merge='git merge'
alias rebase='git rebase'

alias stats='git status -s'
alias fetch='git fetch origin'
alias pull='git pull origin'
alias push='git push origin'

# Setup Starship, fzf, & zoxide
eval "$(starship init bash)"
eval "$(fzf --bash)"
eval "$(zoxide init --cmd cd bash)"
eval "$(zoxide init bash)"
