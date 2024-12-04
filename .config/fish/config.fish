# Supresses fish's intro message
set fish_greeting

# Set visual, editor, & manpager
set -x VISUAL nvim
set -x EDITOR nvim
set -x MANPAGER less

# Set starship, bat, & fzf args
set -x STARSHIP_CONFIG ~/.config/starship/starship.toml
set -x BAT_THEME Cobaltic
set -x FZF_DEFAULT_COMMAND 'fd --type file --hidden --no-ignore'
set -x FZF_DEFAULT_OPTS '
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
alias lvim='command nvim'
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
function yazi_wrapper
  set tmp (mktemp -t "yazi-cwd.XXXXXX")
  yazi $argv --cwd-file="$tmp"
  if set cwd (command cat -- "$tmp"); and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
    builtin cd -- "$cwd"
  end
  command rm -f -- "$tmp"
end

# Helper fzf abstraction
function run_fzf
  set -f selections (
    eval $argv[1] | string trim
  )
  if test -n "$selections"
    eval $argv[2] (string split -- " " $selections)
  end
end

# Nvim using fzf
function fzf_nvim
  if test (count $argv) -eq 0
    run_fzf 'command fzf --preview "bat --color=always --style=numbers --line-range=:500 {}"' 'command nvim'
  else
    command nvim $argv
  end
end

# VSCode using fzf
function fzf_code
  if test (count $argv) -eq 0
    run_fzf 'command fzf --preview "bat --color=always --style=numbers --line-range=:500 {}"' 'command code'
  else
    command code $argv
  end
end

# Syntax highlighting
set fish_color_normal normal
set fish_color_command blue
set fish_color_keyword magenta
set fish_color_quote brgreen
set fish_color_redirection yellow
set fish_color_end brmagenta
set fish_color_error cyan
set fish_color_param cyan
set fish_color_valid_path brcyan
set fish_color_option yellow
set fish_color_comment green
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
set fish_color_cancel white
set fish_color_search_match bryellow
set fish_color_history_current bryellow

# Cursors
set fish_cursor_default block
set fish_cursor_insert line
set fish_cursor_replace_one underscore
set fish_cursor_replace underscore

# Key bindings
function fish_user_key_bindings
  fish_vi_key_bindings insert
end

# Setup starship, fzf, & zoxide
function starship_transient_prompt_func
  starship module character
end
starship init fish | source
enable_transience
fzf --fish | source
zoxide init --cmd cd fish | source
zoxide init fish | source
