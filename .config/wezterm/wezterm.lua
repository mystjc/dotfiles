-- Pull in the wezterm API & external modules
local wezterm = require("wezterm")
local config = wezterm.config_builder()

require("events.format_tab_title")
require("modules.colorscheme").apply_colorscheme(config)
require("modules.keybinds").apply_keybinds(config, wezterm.action)

-- Default shell
config.default_prog = { "/usr/bin/fish", "-l" }

-- Font
config.font_size = 10
config.font = wezterm.font("CaskaydiaCove Nerd Font")
config.adjust_window_size_when_changing_font_size = false

-- Window
config.initial_rows = 40
config.initial_cols = 130
config.window_background_opacity = 0.95
-- config.window_decorations = "RESIZE"

-- Tabs
config.use_fancy_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true
config.show_new_tab_button_in_tab_bar = false
config.tab_bar_at_bottom = true
config.tab_max_width = 64

-- Misc.
config.enable_wayland = false
config.enable_kitty_keyboard = true
config.default_cursor_style = "SteadyBar"
config.window_close_confirmation = "NeverPrompt"
config.audible_bell = "Disabled"

return config
