# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Set visual, editor, & manpager
export VISUAL="nvim"
export EDITOR="nvim"
export MANPAGER="less"

# Set starship, bat, & fzf args
export STARSHIP_CONFIG=~/.config/starship/starship.toml
export BAT_THEME="Cobaltic"
export FZF_DEFAULT_COMMAND='fd --type file --hidden --no-ignore'
export FZF_DEFAULT_OPTS='
  --color=fg:#b3c8e1,fg+:#76a6e4,bg:#242f3b,bg+:#242f3b
  --color=hl:#8bbb65,hl+:#ace37e,info:#76c4e0,marker:#d580e0
  --color=prompt:#34465c,spinner:#76c4e0,pointer:#4586c4,header:#b066b9
  --color=border:#34465c,label:#b3c8e1,query:#b3c8e1
  --border="rounded" --border-label="" --preview-window="border-rounded"
  --prompt=" " --separator="─" --scrollbar="│" --info="right"'

# ALIASES

# Arch
alias nay='yay -Rns'
alias ope='yay -Rns (yay -Qtdq)'

# Navigation
alias .='cd -'
alias ..='cd ../'
alias ...='cd ../../'
alias ....='cd ../../../'

# File management
alias ls='lsd --group-directories-first'
alias la='lsd -A --group-directories-first'
alias ll='lsd -Al --group-directories-first'
alias lt='lsd --tree --group-directories-first'

alias mkd='mkdir -vp'
alias rmd='rm -rvI'
alias mk='touch'
alias rm='rm -vi'
alias cp='cp -vi'
alias mv='mv -vi'

# yt-dlp aliases
alias ytv='cd ~/Downloads && yt-dlp'
alias yta='cd ~/Downloads && yt-dlp --extract-audio'

# Misc.
alias lvim='\nvim'
alias nvim='fzf_nvim'
alias code='fzf_code'
alias cat='bat --color=always --style=numbers'
alias fzf='fzf -e --preview "bat --color=always --style=numbers --line-range=:500 {}"'
alias lg='lazygit'
alias ff='fastfetch'
alias yz='yazi_wrapper'
alias c='clear'
alias x='exit'

# FUNCTIONS

# Exit to cwd using yazi
yazi_wrapper () {
  local tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
  yazi "$@" --cwd-file="$tmp"
  if cwd="$(\cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
    builtin cd -- "$cwd"
  fi
  \rm -f -- "$tmp"
}

# Helper fzf abstraction
run_fzf () {
  local selections=$(eval "$1")
  selections=${selections//\'/}
  if [ -n "$selections" ]; then
    eval "$2" $(echo " $selections")
  fi
}

# Nvim using fzf
fzf_nvim () {
  if [ $# -eq 0 ]; then
    run_fzf '\fzf --preview "bat --color=always --style=numbers --line-range=:500 {}"' '\nvim'
  else
    \nvim "$@"
  fi
}

# VSCode using fzf
fzf_code () {
  if [ $# -eq 0 ]; then
    run_fzf '\fzf --preview "bat --color=always --style=numbers --line-range=:500 {}"' '\code'
  else
    \code "$@"
  fi
}

# Cursor
echo -ne "\e[6 q"

# Setup starship, fzf, & zoxide
eval "$(starship init bash)"
eval "$(fzf --bash)"
eval "$(zoxide init --cmd cd bash)"
eval "$(zoxide init bash)"
