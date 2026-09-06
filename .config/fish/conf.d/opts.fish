# Supresses fish's greeting message
set fish_greeting

# Syntax highlighting
set fish_color_normal normal
set fish_color_command magenta
set fish_color_builtin blue
set fish_color_function magenta
set fish_color_keyword magenta
set fish_color_quote green
set fish_color_redirection yellow
set fish_color_end magenta
set fish_color_error red
set fish_color_param cyan
set fish_color_valid_path brcyan
set fish_color_option yellow
set fish_color_comment brblack
set fish_color_selection brwhite
set fish_color_operator cyan
set fish_color_escape yellow
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
