# Set visual, editor, & manpager
set -x VISUAL nvim
set -x EDITOR nvim
set -x MANPAGER "bat -l man -p"

# Set starship, bat, & fzf args
set -x STARSHIP_CONFIG ~/.config/starship/starship.toml
set -x BAT_THEME base16
set -x FZF_DEFAULT_COMMAND 'fd --type file --hidden --no-ignore'
set -x FZF_DEFAULT_OPTS '
    --color=fg:white,fg+:bright-blue,bg+:black
    --color=hl:green,hl+:bright-green,info:bright-cyan,marker:bright-magenta
    --color=prompt:bright-black,spinner:bright-cyan,pointer:bright-blue,header:magenta
    --color=border:bright-black,label:white,query:white
    --border="rounded" --border-label="" --preview-window="border-rounded"
    --prompt="❯ " --separator="─" --scrollbar="│" --info="right"'

# Initialize starship, fzf, & zoxide
function starship_transient_prompt_func
    starship module character
end
starship init fish | source
enable_transience
fzf --fish | source
zoxide init --cmd cd fish | source
zoxide init fish | source
