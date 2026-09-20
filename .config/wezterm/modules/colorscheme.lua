local M = {}

M.colors = {
    foreground = "#b3c8e1",
    background = "#242f3b",
    highlight = "#4586c4",
    black = "#2b3947",
    red = "#c3514f",
    green = "#8bbb65",
    yellow = "#c4a053",
    blue = "#5c87bb",
    magenta = "#b066b9",
    cyan = "#5ba0b7",
    white = "#aac2df",
    br_black = "#344a5e",
    br_red = "#ee6a65",
    br_green = "#ace37e",
    br_yellow = "#eec36a",
    br_blue = "#76a6e4",
    br_magenta = "#d580e0",
    br_cyan = "#76c4e0",
    br_white = "#c2ddff",
}

function M.apply_colorscheme(config)
    local colors = M.colors
	config.colors = {
		foreground = colors.foreground,
		background = colors.background,
		ansi = {
            colors.black,
            colors.red,
            colors.green,
            colors.yellow,
            colors.blue,
            colors.magenta,
            colors.cyan,
			colors.white,
		},
		brights = {
            colors.br_black,
            colors.br_red,
            colors.br_green,
            colors.br_yellow,
            colors.br_blue,
            colors.br_magenta,
            colors.br_cyan,
            colors.br_white,
		},
		cursor_fg = colors.background,
		cursor_bg = colors.foreground,
		cursor_border = colors.foreground,
		selection_fg = colors.foreground,
		selection_bg = colors.highlight,
		split = colors.highlight,
		tab_bar = {
			background = colors.background,
			active_tab = {
				fg_color = colors.foreground,
				bg_color = colors.highlight,
			},
			inactive_tab = {
				fg_color = colors.foreground,
				bg_color = colors.background,
			},
			inactive_tab_hover = {
				fg_color = colors.foreground,
				bg_color = colors.br_black,
			},
			new_tab = {
				fg_color = colors.foreground,
				bg_color = colors.background,
			},
			new_tab_hover = {
				fg_color = colors.foreground,
				bg_color = colors.br_black,
			},
		},
	}
end

return M
