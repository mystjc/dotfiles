
#   __ _     _
#  / _(_)   | |
# | |_ _ ___| |__
# |  _| / __| '_ \
# | | | \__ \ | | |
# |_| |_|___/_| |_|
#

# Supresses fish's intro message
set fish_greeting

# ALIASES

alias ..='cd ../'
alias ...='cd ../../'
alias ....='cd ../../../'

alias ls='lsd'
alias la='lsd -a'
alias ll='lsd -al'
alias lt='lsd -d --tree'

alias mkdir='mkdir -v'
alias rmdir='rm -rvi'
alias cp='cp -vi'
alias mv='mv -vi'
alias rm='rm -vi'

alias cat='bat'
alias df='df -h'
alias grep='grep --color=auto'

alias nay='yay -Rns'
alias ope='yay -Rns (yay -Qtdq)'

alias clone='git clone'
alias add='git add'
alias addmod='git add -u'
alias commit='git commit -m'
alias fetch='git fetch'
alias pull='git pull origin'
alias push='git push origin'
alias branch='git branch'
alias checkout='git checkout'

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
