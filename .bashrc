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

# Navigation
alias .='cd -'
alias ..='cd ../'
alias ...='cd ../../'
alias ....='cd ../../../'

# File management
alias ls='lsd'
alias la='lsd -a'
alias ll='lsd -al'
alias lt='lsd -d --tree'

alias mkdir='mkdir -vp'
alias rmdir='rm -rvI'
alias mk='touch'
alias rm='rm -vi'
alias cp='cp -vi'
alias mv='mv -vi'

# Git aliases
alias git-aliases='rg git ~/dotfiles/.config/fish/'

alias add='git add'
alias stage='git add --all'
alias restore='git restore --staged'
alias commit='git commit --message'
alias save='git add --all && git commit --message'

alias branch='git branch'
alias delete='git branch --delete'
alias checkout='git checkout'
alias merge='git merge'
alias rebase='git rebase'

alias fetch='git fetch origin'
alias pull='git pull origin'
alias push='git push origin'

alias stats='git status -s'
alias log='git log'
alias diff='git diff --staged'
alias stash='git stash push'
alias unstash='git stash pop'
alias revert='git revert'
alias unrevert='git cherry-pick'
alias reset='git reset --hard HEAD~1'

# Misc.
alias df='df -h'
alias cat='bat --color=always'
alias fzf='fzf --preview "bat --color=always --style=numbers --line-range=:500 {}"'
alias fast='fastfetch'

alias nay='yay -Rns'
alias ope='yay -Rns (yay -Qtdq)'

# Setup Starship, fzf, & zoxide
eval "$(starship init bash)"
eval "$(fzf --bash)"
eval "$(zoxide init --cmd cd bash)"
eval "$(zoxide init bash)"
