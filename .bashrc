
#  _               _
# | |             | |
# | |__   __ _ ___| |__
# | '_ \ / _` / __| '_ \
# | |_) | (_| \__ \ | | |
# |_.__/ \__,_|___/_| |_|

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

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
