# Arch
abbr -a nay 'yay -Rns'
abbr -a orp 'yay -Rns (yay -Qtdq)'
abbr -a pac 'paccache -rk1 && paccache -ruk0'

# Nix

# Navigation
abbr -a . "cd -"
function multicd
    echo cd (string repeat -n (math (string length -- $argv[1]) - 1) ../)
end
abbr -a .. --regex '^\.\.+$' --function multicd

abbr -a la 'ls -A'
abbr -a ll 'ls -Al'
abbr -a lt 'ls --tree'

# File management
abbr -a mkd 'mkdir -vp'
abbr -a rmd 'rm -rvI'
abbr -a cpd 'cp -rvi'
abbr -a mvd 'mv -rvi'
abbr -a mk 'touch'
abbr -a rm 'rm -vi'
abbr -a cp 'cp -vi'
abbr -a mv 'mv -vi'

# Git
abbr --command git a 'add'
abbr --command git aa 'add .'
abbr --command git b 'branch'
abbr --command git c 'commit'
abbr --command git cm 'commit -m'
abbr --command git co 'checkout'
abbr --command git cp 'cherry-pick'
abbr --command git d 'diff --color=always'
abbr --command git dc 'diff --cached --color=always'
abbr --command git f 'fetch'
abbr --command git l 'log'
abbr --command git ls 'ls-files'
abbr --command git m 'merge'
abbr --command git pl 'pull'
abbr --command git pu 'push'
abbr --command git r 'restore'
abbr --command git ra 'restore --staged .'
abbr --command git rb 'rebase'
abbr --command git rv 'revert'
abbr --command git s 'status'

# Media
abbr -a mpa 'mpv --no-video'
abbr -a ytv 'yt-dlp'
abbr -a yta 'yt-dlp -x'

# Misc.
abbr -a nv 'nvim'
abbr -a df 'df -h'
abbr -a lg 'lazygit'
abbr -a ff 'fastfetch'
abbr -a nf 'fastfetch -c neofetch.jsonc'
abbr -a c 'clear'
abbr -a r 'reset'
abbr -a q 'exit'
