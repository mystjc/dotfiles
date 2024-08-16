local colors = {
    foreground = "#b3c8e1",
    background = "#242f3b",
    dark_black = "#2b3947",
    bright_black = "#344a5e",
    dark_white = "#aac2df",
    light_white = "#c2ddff",
    dark_green = "#8bbb65",
    dark_yellow = "#c4a053",
    dark_blue = "#5c87bb",
    dark_magenta = "#b066b9",
    dark_cyan = "#5ba0b7",
    bright_red = "#ee6a65",
    bright_orange = "#ee9663",
    bright_yellow = "#eec36a",
    bright_green = "#ace37e",
    bright_magenta = "#d580e0",
    none = "NONE",
}

local cobaltic = (vim.o.background == "dark") and colors

-- Enable contrast sidebars, floating windows and popup menus
if vim.g.contrast then
    cobaltic.sidebar = cobaltic.dark_black
    cobaltic.float = cobaltic.dark_black
else
    cobaltic.sidebar = cobaltic.background
    cobaltic.float = cobaltic.background
end

if vim.g.cursorline_transparent then
    cobaltic.cursorlinefg = cobaltic.background
else
    cobaltic.cursorlinefg = cobaltic.dark_black
end

return cobaltic
