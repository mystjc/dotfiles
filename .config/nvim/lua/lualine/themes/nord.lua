local colors = require("cobaltic.colors")

local cobaltic = {}

cobaltic.normal = {
	a = { fg = colors.dark_black, bg = colors.dark_magenta },
	b = { fg = colors.dark_white, bg = colors.bright_black },
	c = { fg = colors.foreground, bg = colors.dark_black },
}

cobaltic.insert = {
	a = { fg = colors.dark_black, bg = colors.foreground },
	b = { fg = colors.light_white, bg = colors.bright_black },
	y = {  fg = colors.dark_white, bg = colors.bright_black },
}

cobaltic.visual = {
	a = { fg = colors.background, bg = colors.dark_cyan },
	b = { fg = colors.foreground, bg = colors.bright_black },
	y = {  fg = colors.dark_white, bg = colors.bright_black },
}

cobaltic.replace = {
	a = { fg = colors.background, bg = colors.bright_red },
	b = { fg = colors.foreground, bg = colors.bright_black },
	y = {  fg = colors.dark_white, bg = colors.bright_black },
}

cobaltic.command = {
	a = { fg = colors.background, bg = colors.bright_magenta, gui = "bold" },
	b = { fg = colors.foreground, bg = colors.bright_black },
	y = {  fg = colors.dark_white, bg = colors.bright_black },
}

cobaltic.inactive = {
	a = { fg = colors.foreground, bg = colors.background, gui = "bold" },
	b = { fg = colors.foreground, bg = colors.background },
	c = { fg = colors.foreground, bg = colors.dark_black },
}

return cobaltic
