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
set -x MANPAGER less

# Starship
set -x STARSHIP_CONFIG ~/.config/starship/starship.toml

# ALIASES

# Navigation
alias .='cd -'
alias ..='cd ../'
alias ...='cd ../../'
alias ....='cd ../../../'

# File management
alias ls='lsd'
alias la='lsd -A'
alias ll='lsd -Al'
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
alias restore='git restore --staged'
alias stage='git add --all'
alias unstage='git restore --staged .'
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
alias diff='git diff'
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
function starship_transient_prompt_func
  starship module character
end
starship init fish | source
enable_transience
fzf --fish | source
zoxide init --cmd cd fish | source
zoxide init fish | source
