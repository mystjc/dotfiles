
#   __ _     _
#  / _(_)   | |
# | |_ _ ___| |__
# |  _| / __| '_ \
# | | | \__ \ | | |
# |_| |_|___/_| |_|
#

# Supresses fish's intro message
set fish_greeting

# Manpager
set -x MANPAGER "less"

# Starship
set STARSHIP_CONFIG ""~/.config/starship/starship.toml""

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

alias git-aliases='rg git ~/dotfiles/.config/fish/'

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

# FUNCTIONS

# Recreation and binding of !!
function fish_user_key_bindings
  bind ! __history_previous_command
end

function __history_previous_command
  switch (commandline -t)
  case "!"
    commandline -t $history[1]; commandline -f repaint
  case "*"
    commandline -i !
  end
end

# Setup Starship, fzf, & zoxide
starship init fish | source
fzf --fish | source
zoxide init --cmd cd fish | source
zoxide init fish | source
