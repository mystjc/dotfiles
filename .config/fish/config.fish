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

# bat
set -x BAT_THEME Cobaltic

# fzf
set -Ux FZF_DEFAULT_OPTS '
  --color=fg:#b3c8e1,fg+:#76a6e4,bg:#242f3b,bg+:#242f3b
  --color=hl:#8bbb65,hl+:#ace37e,info:#76c4e0,marker:#d580e0
  --color=prompt:#34465c,spinner:#76c4e0,pointer:#4586c4,header:#b066b9
  --color=border:#34465c,label:#b3c8e1,query:#b3c8e1
  --border="rounded" --border-label="" --preview-window="border-rounded"
  --prompt=" " --separator="─" --scrollbar="│" --info="right"'

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
alias lt='lsd --tree'

alias mkd='mkdir -vp'
alias rmd='rm -rvI'
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
alias cat='bat --color=always --style=numbers'
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

# Syntax Highlighting
set fish_color_normal normal
set fish_color_command blue
set fish_color_keyword magenta
set fish_color_quote yellow
set fish_color_redirection green
set fish_color_end magenta
set fish_color_error cyan
set fish_color_param cyan
set fish_color_valid_path brcyan
set fish_color_option green
set fish_color_comment brblack
set fish_color_selection brwhite
set fish_color_operator brcyan
set fish_color_escape brcyan
set fish_color_autosuggestion brblack
set fish_color_cwd green
set fish_color_cwd_root green
set fish_color_user brgreen
set fish_color_host brgreen
set fish_color_host_remote yellow
set fish_color_status red
set fish_color_cancel brblack
set fish_color_search_match bryellow
set fish_color_history_current bryellow

# Setup Starship, fzf, & zoxide
function starship_transient_prompt_func
  starship module character
end
starship init fish | source
enable_transience
fzf --fish | source
zoxide init --cmd cd fish | source
zoxide init fish | source
