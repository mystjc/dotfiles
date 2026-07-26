# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Set visual, editor, & manpager
export VISUAL="nvim"
export EDITOR="nvim"
export MANPAGER="bat -l man -p"

# Set starship, bat, & fzf args
export STARSHIP_CONFIG=~/.config/starship/starship.toml
export BAT_THEME="base16"
export FZF_DEFAULT_COMMAND='fd --type file --hidden --no-ignore'
export FZF_DEFAULT_OPTS='
    --color=fg:white,fg+:bright-blue,bg+:black
    --color=hl:green,hl+:bright-green,info:bright-cyan,marker:bright-magenta
    --color=prompt:bright-black,spinner:bright-cyan,pointer:bright-blue,header:magenta
    --color=border:bright-black,label:white,query:white
    --border="rounded" --border-label="" --preview-window="border-rounded"
    --prompt="❯ " --separator="─" --scrollbar="│" --info="right"'

alias ls='lsd --group-directories-first'
alias la='lsd -A --group-directories-first'
alias ll='lsd -Al --group-directories-first'
alias lt='lsd --tree --group-directories-first'
alias fzf='fzf --preview "bat --color=always --style=numbers --line-range=:500 {}"'

# Cursor
echo -ne "\e[6 q"

# Setup starship, fzf, & zoxide
eval "$(starship init bash)"
eval "$(fzf --bash)"
eval "$(zoxide init --cmd cd bash)"
eval "$(zoxide init bash)"
