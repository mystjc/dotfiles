#   __ _     _
#  / _(_)   | |
# | |_ _ ___| |__
# |  _| / __| '_ \
# | | | \__ \ | | |
# |_| |_|___/_| |_|
#

# Supresses fish's intro message
set fish_greeting

# Visual & Editor
set $VISUAL nvim
set $EDITOR nvim

# Manpager
set -x MANPAGER less

# Starship
set -x STARSHIP_CONFIG ~/.config/starship/starship.toml

# bat
set -x BAT_THEME Cobaltic

# fzf
set -x FZF_DEFAULT_COMMAND 'fd --type file --hidden --no-ignore'
set -x FZF_DEFAULT_OPTS '
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
alias add='fzf_git_add'
alias restore='fzf_git_restore'
alias stage='git add --all'
alias unstage='git restore --staged .'
alias commit='git commit --message'
alias save='git add --all && git commit --message'
alias fetch='git fetch'
alias pull='git pull'
alias push='git push'

alias state='git status -s'
alias log='git log --oneline'
alias diff='git diff --color=always'
alias stash='git stash push'
alias unstash='git stash pop'
alias pick='git cherry-pick'
alias revert='git revert'

# Misc.
alias nvim='fzf_nvim'
alias cat='bat --color=always --style=numbers'
alias fzf='fzf --preview "bat --color=always --style=numbers --line-range=:500 {}"'
alias lg='lazygit'
alias ff='fastfetch'
alias c='clear'
alias x='exit'

alias nay='yay -Rns'
alias ope='yay -Rns (yay -Qtdq)'

# FUNCTIONS

# recreation and binding of !!
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

# helper fzf abstraction
function run_fzf
  set -f selections (
    eval $argv[1] | string trim
  )
  if test -n "$selections"
    eval $argv[2] (string split -- " " $selections)
  end
end

# nvim using fzf
function fzf_nvim
  if test (count $argv) -eq 0
    run_fzf 'fzf --preview "bat --color=always --style=numbers --line-range=:500 {}"' 'command nvim'
  else
    command nvim $argv
  end
end

# git add using fzf
function fzf_git_add
  run_fzf 'git ls-files --modified --others --exclude-standard | fzf --ansi --preview "git diff --color=always {1}"' 'git add'
end

# git restore using fzf
function fzf_git_restore
  run_fzf 'git diff --name-only --cached | fzf --ansi --preview "git diff --cached --color=always {1}"' 'git restore --staged'
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
