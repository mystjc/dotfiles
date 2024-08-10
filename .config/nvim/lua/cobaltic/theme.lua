local cobaltic = require("cobaltic.colors")

local theme = {}

local italic = vim.g.nord_italic == false and cobaltic.none or "italic"
local italic_undercurl = vim.g.nord_italic == false and "undercurl" or "italic,undercurl"
local bold = vim.g.nord_bold == false and cobaltic.none or "bold"
local reverse_bold = vim.g.nord_bold == false and "reverse" or "reverse,bold"
local bold_underline = vim.g.nord_bold == false and "underline" or "bold,underline"
local bold_italic;
if vim.g.nord_bold == false then
	bold_italic = vim.g.nord_italic == false and cobaltic.none or "italic"
elseif vim.g.nord_italic == false then
	bold_italic = "bold"
else
	bold_italic = "bold,italic"
end

theme.loadSyntax = function()
	-- Syntax highlight groups
	return {
		Type = { fg = cobaltic.dark_magenta }, -- int, long, char, etc.
		StorageClass = { fg = cobaltic.dark_magenta }, -- static, register, volatile, etc.
		Structure = { fg = cobaltic.dark_magenta }, -- struct, union, enum, etc.
		Constant = { fg = cobaltic.foreground }, -- any constant
		Character = { fg = cobaltic.bright_green }, -- any character constant: 'c', '\n'
		Number = { fg = cobaltic.bright_magenta }, -- a number constant: 5
		Boolean = { fg = cobaltic.dark_magenta }, -- a boolean constant: TRUE, false
		Float = { fg = cobaltic.bright_magenta }, -- a floating point constant: 2.3e10
		Statement = { fg = cobaltic.dark_magenta }, -- any statement
		Label = { fg = cobaltic.dark_magenta }, -- case, default, etc.
		Operator = { fg = cobaltic.dark_magenta }, -- sizeof", "+", "*", etc.
		Exception = { fg = cobaltic.dark_magenta }, -- try, catch, throw
		PreProc = { fg = cobaltic.dark_magenta }, -- generic Preprocessor
		Include = { fg = cobaltic.dark_magenta }, -- preprocessor #include
		Define = { fg = cobaltic.dark_magenta }, -- preprocessor #define
		Macro = { fg = cobaltic.dark_magenta }, -- same as Define
		Typedef = { fg = cobaltic.dark_magenta }, -- A typedef
		PreCondit = { fg = cobaltic.bright_yellow }, -- preprocessor #if, #else, #endif, etc.
		Special = { fg = cobaltic.foreground }, -- any special symbol
		SpecialChar = { fg = cobaltic.bright_yellow }, -- special character in a constant
		Tag = { fg = cobaltic.foreground }, -- you can use CTRL-] on this
		Delimiter = { fg = cobaltic.light_white }, -- character that needs attention like , or .
		SpecialComment = { fg = cobaltic.dark_yellow }, -- special things inside a comment
		Debug = { fg = cobaltic.bright_red }, -- debugging statements
		Underlined = { fg = cobaltic.bright_green, bg = cobaltic.none, style = "underline" }, -- text that stands out, HTML links
		Ignore = { fg = cobaltic.dark_black }, -- left blank, hidden
		Todo = { fg = cobaltic.bright_yellow, bg = cobaltic.none, style = bold_italic }, -- anything that needs extra attention; mostly the keywords TODO FIXME and XXX
		Conceal = { fg = cobaltic.none, bg = cobaltic.background },
		htmlLink = { fg = cobaltic.bright_green, style = "underline" },
		markdownH1Delimiter = { fg = cobaltic.dark_yellow },
		markdownH2Delimiter = { fg = cobaltic.bright_red },
		markdownH3Delimiter = { fg = cobaltic.bright_green },
		htmlH1 = { fg = cobaltic.dark_yellow, style = bold },
		htmlH2 = { fg = cobaltic.bright_red, style = bold },
		htmlH3 = { fg = cobaltic.bright_green, style = bold },
		htmlH4 = { fg = cobaltic.bright_magenta, style = bold },
		htmlH5 = { fg = cobaltic.dark_magenta, style = bold },
		markdownH1 = { fg = cobaltic.dark_yellow, style = bold },
		markdownH2 = { fg = cobaltic.bright_red, style = bold },
		markdownH3 = { fg = cobaltic.bright_green, style = bold },
		Error = { fg = cobaltic.bright_red, bg = cobaltic.none, style = bold_underline }, -- any erroneous construct with bold
		Comment = { fg = cobaltic.nord3_gui_bright, style = italic }, -- italic comments
		Conditional = { fg = cobaltic.dark_magenta, style = italic }, -- italic if, then, else, endif, switch, etc.
		Function = { fg = cobaltic.dark_yellow, style = italic }, -- italic funtion names
		Identifier = { fg = cobaltic.dark_magenta, style = italic }, -- any variable name
		Keyword = { fg = cobaltic.dark_magenta, style = italic }, -- italic for, do, while, etc.
		Repeat = { fg = cobaltic.dark_magenta, style = italic }, -- italic any other keyword
		String = { fg = cobaltic.bright_green, style = italic }, -- any string
	}
end

theme.loadEditor = function()
	-- Editor highlight groups

	local editor = {
		NormalFloat = { fg = cobaltic.foreground, bg = cobaltic.float }, -- normal text and background color
		FloatBorder = { fg = cobaltic.foreground, bg = cobaltic.float }, -- normal text and background color
		ColorColumn = { fg = cobaltic.none, bg = cobaltic.dark_black }, -- used for the columns set with 'colorcolumn'
		Conceal = { fg = cobaltic.dark_black }, -- placeholder characters substituted for concealed text (see 'conceallevel')
		Cursor = { fg = cobaltic.foreground, bg = cobaltic.none, style = "reverse" }, -- the character under the cursor
		CursorIM = { fg = cobaltic.dark_white, bg = cobaltic.none, style = "reverse" }, -- like Cursor, but used when in IME mode
		Directory = { fg = cobaltic.dark_cyan, bg = cobaltic.none }, -- directory names (and other special names in listings)
		EndOfBuffer = { fg = cobaltic.dark_black },
		ErrorMsg = { fg = cobaltic.none },
		Folded = { fg = cobaltic.nord3_gui_bright, bg = cobaltic.none, style = italic },
		FoldColumn = { fg = cobaltic.dark_cyan },
		IncSearch = { fg = cobaltic.light_white, bg = cobaltic.dark_blue },
		LineNr = { fg = cobaltic.nord3_gui_bright },
		CursorLineNr = { fg = cobaltic.foreground },
		MatchParen = { fg = cobaltic.bright_magenta, bg = cobaltic.none, style = bold },
		ModeMsg = { fg = cobaltic.foreground },
		MoreMsg = { fg = cobaltic.foreground },
		NonText = { fg = cobaltic.dark_black },
		Pmenu = { fg = cobaltic.foreground, bg = cobaltic.bright_black },
		PmenuSel = { fg = cobaltic.foreground, bg = cobaltic.dark_blue },
		PmenuSbar = { fg = cobaltic.foreground, bg = cobaltic.bright_black },
		PmenuThumb = { fg = cobaltic.foreground, bg = cobaltic.foreground },
		Question = { fg = cobaltic.bright_green },
		QuickFixLine = { fg = cobaltic.foreground, bg = cobaltic.none, style = "reverse" },
		qfLineNr = { fg = cobaltic.foreground, bg = cobaltic.none, style = "reverse" },
		Search = { fg = cobaltic.light_white, bg = cobaltic.dark_blue },
		Substitute = { fg = cobaltic.background, bg = cobaltic.bright_orange },
		SpecialKey = { fg = cobaltic.dark_magenta },
		SpellBad = { fg = cobaltic.bright_red, bg = cobaltic.none, style = italic_undercurl },
		SpellCap = { fg = cobaltic.dark_cyan, bg = cobaltic.none, style = italic_undercurl },
		SpellLocal = { fg = cobaltic.dark_yellow, bg = cobaltic.none, style = italic_undercurl },
		SpellRare = { fg = cobaltic.dark_magenta, bg = cobaltic.none, style = italic_undercurl },
		StatusLine = { fg = cobaltic.foreground, bg = cobaltic.bright_black },
		StatusLineNC = { fg = cobaltic.foreground, bg = cobaltic.dark_black },
		StatusLineTerm = { fg = cobaltic.foreground, bg = cobaltic.bright_black },
		StatusLineTermNC = { fg = cobaltic.foreground, bg = cobaltic.dark_black },
		TabLineFill = { fg = cobaltic.foreground, bg = cobaltic.none },
		TablineSel = { fg = cobaltic.dark_black, bg = cobaltic.dark_magenta },
		Tabline = { fg = cobaltic.foreground, bg = cobaltic.dark_black },
		Title = { fg = cobaltic.bright_green, bg = cobaltic.none, style = bold },
		Visual = { fg = cobaltic.none, bg = cobaltic.bright_black },
		VisualNOS = { fg = cobaltic.none, bg = cobaltic.bright_black },
		WarningMsg = { fg = cobaltic.bright_magenta },
		WildMenu = { fg = cobaltic.bright_orange, bg = cobaltic.none, style = bold },
		CursorColumn = { fg = cobaltic.none, bg = cobaltic.cursorlinefg },
		CursorLine = { fg = cobaltic.none, bg = cobaltic.cursorlinefg },
		ToolbarLine = { fg = cobaltic.foreground, bg = cobaltic.dark_black },
		ToolbarButton = { fg = cobaltic.foreground, bg = cobaltic.none, style = bold },
		NormalMode = { fg = cobaltic.foreground, bg = cobaltic.none, style = "reverse" },
		InsertMode = { fg = cobaltic.bright_green, bg = cobaltic.none, style = "reverse" },
		ReplacelMode = { fg = cobaltic.bright_red, bg = cobaltic.none, style = "reverse" },
		VisualMode = { fg = cobaltic.dark_magenta, bg = cobaltic.none, style = "reverse" },
		CommandMode = { fg = cobaltic.foreground, bg = cobaltic.none, style = "reverse" },
		Warnings = { fg = cobaltic.bright_magenta },

		healthError = { fg = cobaltic.bright_red },
		healthSuccess = { fg = cobaltic.bright_green },
		healthWarning = { fg = cobaltic.bright_magenta },

		-- dashboard
		DashboardShortCut = { fg = cobaltic.dark_cyan },
		DashboardHeader = { fg = cobaltic.dark_magenta },
		DashboardCenter = { fg = cobaltic.dark_yellow },
		DashboardFooter = { fg = cobaltic.bright_green, style = italic },

		-- Barbar
		BufferTabpageFill = { bg = cobaltic.background },

		BufferCurrent = { bg = cobaltic.dark_black },
		BufferCurrentMod = { bg = cobaltic.dark_black, fg = cobaltic.bright_magenta },
		BufferCurrentIcon = { bg = cobaltic.dark_black },
		BufferCurrentSign = { bg = cobaltic.dark_black },
		BufferCurrentIndex = { bg = cobaltic.dark_black },
		BufferCurrentTarget = { bg = cobaltic.dark_black, fg = cobaltic.bright_red },

		BufferInactive = { bg = cobaltic.background, fg = cobaltic.nord3_gui },
		BufferInactiveMod = { bg = cobaltic.background, fg = cobaltic.bright_magenta },
		BufferInactiveIcon = { bg = cobaltic.background, fg = cobaltic.nord3_gui },
		BufferInactiveSign = { bg = cobaltic.background, fg = cobaltic.nord3_gui },
		BufferInactiveIndex = { bg = cobaltic.background, fg = cobaltic.nord3_gui },
		BufferInactiveTarget = { bg = cobaltic.background, fg = cobaltic.bright_red },

		BufferVisible = { bg = cobaltic.bright_black },
		BufferVisibleMod = { bg = cobaltic.bright_black, fg = cobaltic.bright_magenta },
		BufferVisibleIcon = { bg = cobaltic.bright_black },
		BufferVisibleSign = { bg = cobaltic.bright_black },
		BufferVisibleIndex = { bg = cobaltic.bright_black },
		BufferVisibleTarget = { bg = cobaltic.bright_black, fg = cobaltic.bright_red },

		-- nvim-notify
		NotifyDEBUGBorder = { fg = cobaltic.nord3_gui },
		NotifyDEBUGIcon = { fg = cobaltic.nord3_gui },
		NotifyDEBUGTitle = { fg = cobaltic.nord3_gui },
		NotifyERRORBorder = { fg = cobaltic.bright_red },
		NotifyERRORIcon = { fg = cobaltic.bright_red },
		NotifyERRORTitle = { fg = cobaltic.bright_red },
		NotifyINFOBorder = { fg = cobaltic.bright_green },
		NotifyINFOIcon = { fg = cobaltic.bright_green },
		NotifyINFOTitle = { fg = cobaltic.bright_green },
		NotifyTRACEBorder = { fg = cobaltic.bright_magenta },
		NotifyTRACEIcon = { fg = cobaltic.bright_magenta },
		NotifyTRACETitle = { fg = cobaltic.bright_magenta },
		NotifyWARNBorder = { fg = cobaltic.bright_yellow },
		NotifyWARNIcon = { fg = cobaltic.bright_yellow },
		NotifyWARNTitle = { fg = cobaltic.bright_yellow },

		-- leap.nvim
		LeapMatch = { style = "underline,nocombine", fg = cobaltic.bright_yellow },
		LeapLabelPrimary = { style = "nocombine", fg = cobaltic.background, bg = cobaltic.bright_yellow },
		LeapLabelSecondary = { style = "nocombine", fg = cobaltic.background, bg = cobaltic.bright_magenta },
	}

	-- Options:

	--Set transparent background
	if vim.g.nord_disable_background then
		editor.Normal = { fg = cobaltic.foreground, bg = cobaltic.none } -- normal text and background color
		editor.SignColumn = { fg = cobaltic.foreground, bg = cobaltic.none }
	else
		editor.Normal = { fg = cobaltic.foreground, bg = cobaltic.background } -- normal text and background color
		editor.SignColumn = { fg = cobaltic.foreground, bg = cobaltic.background }
	end

	-- Remove window split borders
	if vim.g.nord_borders then
		editor.VertSplit = { fg = cobaltic.bright_black }
	else
		editor.VertSplit = { fg = cobaltic.background }
	end

	if vim.g.nord_uniform_diff_background then
		editor.DiffAdd = { fg = cobaltic.bright_green, bg = cobaltic.dark_black } -- diff mode: Added line
		editor.DiffChange = { fg = cobaltic.bright_yellow, bg = cobaltic.dark_black } -- diff mode: Changed line
		editor.DiffDelete = { fg = cobaltic.bright_red, bg = cobaltic.dark_black } -- diff mode: Deleted line
		editor.DiffText = { fg = cobaltic.bright_magenta, bg = cobaltic.dark_black } -- diff mode: Changed text within a changed line
	else
		editor.DiffAdd = { fg = cobaltic.bright_green, bg = cobaltic.none, style = "reverse" } -- diff mode: Added line
		editor.DiffChange = { fg = cobaltic.bright_yellow, bg = cobaltic.none, style = "reverse" } -- diff mode: Changed line
		editor.DiffDelete = { fg = cobaltic.bright_red, bg = cobaltic.none, style = "reverse" } -- diff mode: Deleted line
		editor.DiffText = { fg = cobaltic.bright_magenta, bg = cobaltic.none, style = "reverse" } -- diff mode: Changed text within a changed line
	end

	return editor
end

theme.loadTerminal = function()
	vim.g.terminal_color_0 = cobaltic.dark_black
	vim.g.terminal_color_1 = cobaltic.bright_red
	vim.g.terminal_color_2 = cobaltic.bright_green
	vim.g.terminal_color_3 = cobaltic.bright_yellow
	vim.g.terminal_color_4 = cobaltic.dark_magenta
	vim.g.terminal_color_5 = cobaltic.bright_magenta
	vim.g.terminal_color_6 = cobaltic.dark_yellow
	vim.g.terminal_color_7 = cobaltic.dark_white
	vim.g.terminal_color_8 = cobaltic.nord3_gui
	vim.g.terminal_color_9 = cobaltic.bright_red
	vim.g.terminal_color_10 = cobaltic.bright_green
	vim.g.terminal_color_11 = cobaltic.bright_yellow
	vim.g.terminal_color_12 = cobaltic.dark_magenta
	vim.g.terminal_color_13 = cobaltic.bright_magenta
	vim.g.terminal_color_14 = cobaltic.dark_cyan
	vim.g.terminal_color_15 = cobaltic.light_white
end

theme.loadTreeSitter = function()
	-- TreeSitter highlight groups

	local treesitter = {
		TSConstructor = { fg = cobaltic.dark_magenta }, -- For constructor calls and definitions: `= { }` in Lua, and Java constructors.
		TSConstant = { fg = cobaltic.bright_yellow }, -- For constants
		TSFloat = { fg = cobaltic.bright_magenta }, -- For floats
		TSNumber = { fg = cobaltic.bright_magenta }, -- For all number
		TSAttribute = { fg = cobaltic.bright_magenta }, -- (unstable) TODO: docs
		TSError = { fg = cobaltic.bright_red }, -- For syntax/parser errors.
		TSException = { fg = cobaltic.bright_magenta }, -- For exception related keywords.
		TSFuncMacro = { fg = cobaltic.dark_cyan }, -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
		TSInclude = { fg = cobaltic.dark_magenta }, -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
		TSLabel = { fg = cobaltic.bright_magenta }, -- For labels: `label:` in C and `:label:` in Lua.
		TSOperator = { fg = cobaltic.dark_magenta }, -- For any operator: `+`, but also `->` and `*` in C.
		TSParameter = { fg = cobaltic.dark_blue }, -- For parameters of a function.
		TSParameterReference = { fg = cobaltic.dark_blue }, -- For references to parameters of a function.
		TSPunctDelimiter = { fg = cobaltic.dark_yellow }, -- For delimiters ie: `.`
		TSPunctBracket = { fg = cobaltic.dark_yellow }, -- For brackets and parens.
		TSPunctSpecial = { fg = cobaltic.dark_yellow }, -- For special punctutation that does not fall in the catagories before.
		TSSymbol = { fg = cobaltic.bright_magenta }, -- For identifiers referring to symbols or atoms.
		TSType = { fg = cobaltic.dark_magenta }, -- For types.
		TSTypeBuiltin = { fg = cobaltic.dark_magenta }, -- For builtin types.
		TSTag = { fg = cobaltic.foreground }, -- Tags like html tag names.
		TSTagDelimiter = { fg = cobaltic.bright_magenta }, -- Tag delimiter like `<` `>` `/`
		TSText = { fg = cobaltic.foreground }, -- For strings considenord11_gui text in a markup language.
		TSTextReference = { fg = cobaltic.bright_magenta }, -- FIXME
		TSEmphasis = { fg = cobaltic.dark_blue }, -- For text to be represented with emphasis.
		TSUnderline = { fg = cobaltic.foreground, bg = cobaltic.none, style = "underline" }, -- For text to be represented with an underline.
		TSLiteral = { fg = cobaltic.foreground }, -- Literal text.
		TSURI = { fg = cobaltic.bright_green }, -- Any URI like a link or email.
		TSAnnotation = { fg = cobaltic.bright_red }, -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
		["@constructor"] = { fg = cobaltic.dark_magenta },
		["@constant"] = { fg = cobaltic.bright_yellow },
		["@float"] = { fg = cobaltic.bright_magenta },
		["@number"] = { fg = cobaltic.bright_magenta },
		["@attribute"] = { fg = cobaltic.bright_magenta },
		["@error"] = { fg = cobaltic.bright_red },
		["@exception"] = { fg = cobaltic.bright_magenta },
		["@funtion.macro"] = { fg = cobaltic.dark_cyan },
		["@include"] = { fg = cobaltic.dark_magenta },
		["@label"] = { fg = cobaltic.bright_magenta },
		["@operator"] = { fg = cobaltic.dark_magenta },
		["@parameter"] = { fg = cobaltic.dark_blue },
		["@punctuation.delimiter"] = { fg = cobaltic.dark_yellow },
		["@punctuation.bracket"] = { fg = cobaltic.dark_yellow },
		["@punctuation.special"] = { fg = cobaltic.dark_yellow },
		["@symbol"] = { fg = cobaltic.bright_magenta },
		["@type"] = { fg = cobaltic.dark_magenta },
		["@type.builtin"] = { fg = cobaltic.dark_magenta },
		["@tag"] = { fg = cobaltic.foreground },
		["@tag.delimiter"] = { fg = cobaltic.bright_magenta },
		["@text"] = { fg = cobaltic.foreground },
		["@text.reference"] = { fg = cobaltic.bright_magenta, style = bold },
		["@text.emphasis"] = { fg = cobaltic.dark_blue, style = italic },
		["@text.underline"] = { fg = cobaltic.foreground, bg = cobaltic.none, style = "underline" },
		["@text.literal"] = { fg = cobaltic.foreground },
		["@text.uri"] = { fg = cobaltic.bright_green, style = "underline" },
		["@text.strike"] = { fg = cobaltic.foreground, style = "strikethrough" },
		["@text.math"] = { fg = cobaltic.dark_cyan },

		-- @todo Missing highlights
		-- @function.call
		-- @method.call
		-- @type.qualifier
		-- @text.math (e.g. for LaTeX math environments)
		-- @text.environment (e.g. for text environments of markup languages)
		-- @text.environment.name (e.g. for the name/the string indicating the type of text environment)
		-- @text.note
		-- @text.warning
		-- @text.danger
		-- @tag.attribute
		-- @string.special
	}

	treesitter.TSVariableBuiltin = { fg = cobaltic.foreground, style = bold }
	treesitter.TSBoolean = { fg = cobaltic.dark_magenta, style = bold }
	treesitter.TSConstBuiltin = { fg = cobaltic.dark_cyan, style = bold }
	treesitter.TSConstMacro = { fg = cobaltic.dark_cyan, style = bold }
	treesitter.TSVariable = { fg = cobaltic.foreground, style = bold }
	treesitter.TSTitle = { fg = cobaltic.dark_blue, bg = cobaltic.none, style = bold }
	treesitter["@variable"] = { fg = cobaltic.foreground, style = bold }
	treesitter["@variable.builtin"] = { fg = cobaltic.foreground, style = bold }
	treesitter["@variable.global"] = { fg = cobaltic.foreground, style = bold }
	treesitter["@boolean"] = { fg = cobaltic.dark_magenta, style = bold }
	treesitter["@constant.builtin"] = { fg = cobaltic.dark_cyan, style = bold }
	treesitter["@constant.macro"] = { fg = cobaltic.dark_cyan, style = bold }
	treesitter["@text.title"] = { fg = cobaltic.dark_blue, bg = cobaltic.none, style = bold }
	treesitter["@text.strong"] = { fg = cobaltic.dark_blue, bg = cobaltic.none, style = bold }
	-- Comments
	treesitter.TSComment = { fg = cobaltic.nord3_gui_bright, style = italic }
	-- Conditionals
	treesitter.TSConditional = { fg = cobaltic.dark_magenta, style = italic } -- For keywords related to conditionnals.
	-- Function names
	treesitter.TSFunction = { fg = cobaltic.dark_yellow, style = italic } -- For fuction (calls and definitions).
	treesitter.TSMethod = { fg = cobaltic.dark_cyan, style = italic } -- For method calls and definitions.
	treesitter.TSFuncBuiltin = { fg = cobaltic.dark_yellow, style = italic }
	-- Namespaces and property accessors
	treesitter.TSNamespace = { fg = cobaltic.foreground, style = italic } -- For identifiers referring to modules and namespaces.
	treesitter.TSField = { fg = cobaltic.foreground, style = italic } -- For fields.
	treesitter.TSProperty = { fg = cobaltic.dark_blue, style = italic } -- Same as `TSField`, but when accessing, not declaring.
	-- Language keywords
	treesitter.TSKeyword = { fg = cobaltic.dark_magenta, style = italic } -- For keywords that don't fall in other categories.
	treesitter.TSKeywordFunction = { fg = cobaltic.dark_yellow, style = italic }
	treesitter.TSKeywordReturn = { fg = cobaltic.dark_yellow, style = italic }
	treesitter.TSKeywordOperator = { fg = cobaltic.dark_yellow, style = italic }
	treesitter.TSRepeat = { fg = cobaltic.dark_magenta, style = italic } -- For keywords related to loops.
	-- Strings
	treesitter.TSString = { fg = cobaltic.bright_green, style = italic } -- For strings.
	treesitter.TSStringRegex = { fg = cobaltic.dark_cyan, style = italic } -- For regexes.
	treesitter.TSStringEscape = { fg = cobaltic.bright_magenta, style = italic } -- For escape characters within a string.
	treesitter.TSCharacter = { fg = cobaltic.bright_green, style = italic } -- For characters.

	treesitter["@comment"] = { fg = cobaltic.nord3_gui_bright, style = italic }
	treesitter["@conditional"] = { fg = cobaltic.dark_magenta, style = italic }
	treesitter["@function"] = { fg = cobaltic.dark_yellow, style = italic }
	treesitter["@method"] = { fg = cobaltic.dark_yellow, style = italic }
	treesitter["@function.builtin"] = { fg = cobaltic.dark_yellow, style = italic }
	treesitter["@namespace"] = { fg = cobaltic.foreground, style = italic }
	treesitter["@field"] = { fg = cobaltic.foreground, style = italic }
	treesitter["@property"] = { fg = cobaltic.dark_blue, style = italic }
	treesitter["@keyword"] = { fg = cobaltic.dark_magenta, style = italic }
	treesitter["@keyword.function"] = { fg = cobaltic.dark_yellow, style = italic }
	treesitter["@keyword.return"] = { fg = cobaltic.dark_yellow, style = italic }
	treesitter["@keyword.operator"] = { fg = cobaltic.dark_yellow, style = italic }
	treesitter["@repeat"] = { fg = cobaltic.dark_magenta, style = italic }
	treesitter["@string"] = { fg = cobaltic.bright_green, style = italic }
	treesitter["@string.regex"] = { fg = cobaltic.dark_cyan, style = italic }
	treesitter["@string.escape"] = { fg = cobaltic.bright_magenta, style = italic }
	treesitter["@character"] = { fg = cobaltic.bright_green, style = italic }

	return treesitter
end

theme.loadFiletypes = function()
	-- Filetype-specific highlight groups

	local ft = {
		-- yaml
		yamlBlockMappingKey = { fg = cobaltic.dark_cyan },
		yamlBool = { link = "Boolean" },
		yamlDocumentStart = { link = "Keyword" },
		yamlTSField = { fg = cobaltic.dark_cyan },
		yamlTSString = { fg = cobaltic.foreground },
		yamlTSPunctSpecial = { link = "Keyword" },
		yamlKey = { fg = cobaltic.dark_cyan }, -- stephpy/vim-yaml
	}

	return ft
end

theme.loadLSP = function()
	-- Lsp highlight groups

	local lsp = {
		LspDiagnosticsDefaultError = { fg = cobaltic.bright_red }, -- used for "Error" diagnostic virtual text
		LspDiagnosticsSignError = { fg = cobaltic.bright_red }, -- used for "Error" diagnostic signs in sign column
		LspDiagnosticsFloatingError = { fg = cobaltic.bright_red }, -- used for "Error" diagnostic messages in the diagnostics float
		LspDiagnosticsVirtualTextError = { fg = cobaltic.bright_red }, -- Virtual text "Error"
		LspDiagnosticsUnderlineError = { style = "undercurl", sp = cobaltic.bright_red }, -- used to underline "Error" diagnostics.
		LspDiagnosticsDefaultWarning = { fg = cobaltic.bright_magenta }, -- used for "Warning" diagnostic signs in sign column
		LspDiagnosticsSignWarning = { fg = cobaltic.bright_magenta }, -- used for "Warning" diagnostic signs in sign column
		LspDiagnosticsFloatingWarning = { fg = cobaltic.bright_magenta }, -- used for "Warning" diagnostic messages in the diagnostics float
		LspDiagnosticsVirtualTextWarning = { fg = cobaltic.bright_magenta }, -- Virtual text "Warning"
		LspDiagnosticsUnderlineWarning = { style = "undercurl", sp = cobaltic.bright_magenta }, -- used to underline "Warning" diagnostics.
		LspDiagnosticsDefaultInformation = { fg = cobaltic.dark_blue }, -- used for "Information" diagnostic virtual text
		LspDiagnosticsSignInformation = { fg = cobaltic.dark_blue }, -- used for "Information" diagnostic signs in sign column
		LspDiagnosticsFloatingInformation = { fg = cobaltic.dark_blue }, -- used for "Information" diagnostic messages in the diagnostics float
		LspDiagnosticsVirtualTextInformation = { fg = cobaltic.dark_blue }, -- Virtual text "Information"
		LspDiagnosticsUnderlineInformation = { style = "undercurl", sp = cobaltic.dark_blue }, -- used to underline "Information" diagnostics.
		LspDiagnosticsDefaultHint = { fg = cobaltic.dark_magenta }, -- used for "Hint" diagnostic virtual text
		LspDiagnosticsSignHint = { fg = cobaltic.dark_magenta }, -- used for "Hint" diagnostic signs in sign column
		LspDiagnosticsFloatingHint = { fg = cobaltic.dark_magenta }, -- used for "Hint" diagnostic messages in the diagnostics float
		LspDiagnosticsVirtualTextHint = { fg = cobaltic.dark_magenta }, -- Virtual text "Hint"
		LspDiagnosticsUnderlineHint = { style = "undercurl", sp = cobaltic.dark_blue }, -- used to underline "Hint" diagnostics.
		LspReferenceText = { fg = cobaltic.foreground, bg = cobaltic.dark_black }, -- used for highlighting "text" references
		LspReferenceRead = { fg = cobaltic.foreground, bg = cobaltic.dark_black }, -- used for highlighting "read" references
		LspReferenceWrite = { fg = cobaltic.foreground, bg = cobaltic.dark_black }, -- used for highlighting "write" references

		DiagnosticError = { link = "LspDiagnosticsDefaultError" },
		DiagnosticWarn = { link = "LspDiagnosticsDefaultWarning" },
		DiagnosticInfo = { link = "LspDiagnosticsDefaultInformation" },
		DiagnosticHint = { link = "LspDiagnosticsDefaultHint" },
		DiagnosticVirtualTextWarn = { link = "LspDiagnosticsVirtualTextWarning" },
		DiagnosticUnderlineWarn = { link = "LspDiagnosticsUnderlineWarning" },
		DiagnosticFloatingWarn = { link = "LspDiagnosticsFloatingWarning" },
		DiagnosticSignWarn = { link = "LspDiagnosticsSignWarning" },
		DiagnosticVirtualTextError = { link = "LspDiagnosticsVirtualTextError" },
		DiagnosticUnderlineError = { link = "LspDiagnosticsUnderlineError" },
		DiagnosticFloatingError = { link = "LspDiagnosticsFloatingError" },
		DiagnosticSignError = { link = "LspDiagnosticsSignError" },
		DiagnosticVirtualTextInfo = { link = "LspDiagnosticsVirtualTextInformation" },
		DiagnosticUnderlineInfo = { link = "LspDiagnosticsUnderlineInformation" },
		DiagnosticFloatingInfo = { link = "LspDiagnosticsFloatingInformation" },
		DiagnosticSignInfo = { link = "LspDiagnosticsSignInformation" },
		DiagnosticVirtualTextHint = { link = "LspDiagnosticsVirtualTextHint" },
		DiagnosticUnderlineHint = { link = "LspDiagnosticsUnderlineHint" },
		DiagnosticFloatingHint = { link = "LspDiagnosticsFloatingHint" },
		DiagnosticSignHint = { link = "LspDiagnosticsSignHint" },
	}

	return lsp
end

theme.loadPlugins = function()
	-- Plugins highlight groups

	local plugins = {

		-- LspTrouble
		LspTroubleText = { fg = cobaltic.foreground },
		LspTroubleCount = { fg = cobaltic.dark_magenta, bg = cobaltic.dark_blue },
		LspTroubleNormal = { fg = cobaltic.foreground, bg = cobaltic.sidebar },

		-- Diff
		diffAdded = { fg = cobaltic.bright_green },
		diffRemoved = { fg = cobaltic.bright_red },
		diffChanged = { fg = cobaltic.bright_magenta },
		diffOldFile = { fg = cobaltic.yellow },
		diffNewFile = { fg = cobaltic.bright_orange },
		diffFile = { fg = cobaltic.dark_cyan },
		diffLine = { fg = cobaltic.nord3_gui },
		diffIndexLine = { fg = cobaltic.dark_magenta },

		-- Neogit
		NeogitBranch = { fg = cobaltic.dark_blue },
		NeogitRemote = { fg = cobaltic.dark_magenta },
		NeogitHunkHeader = { fg = cobaltic.dark_yellow },
		NeogitHunkHeaderHighlight = { fg = cobaltic.dark_yellow, bg = cobaltic.dark_black },
		NeogitDiffContextHighlight = { bg = cobaltic.dark_black },
		NeogitDiffDeleteHighlight = { fg = cobaltic.bright_red, style = "reverse" },
		NeogitDiffAddHighlight = { fg = cobaltic.bright_green, style = "reverse" },

		-- GitGutter
		GitGutterAdd = { fg = cobaltic.bright_green }, -- diff mode: Added line |diff.txt|
		GitGutterChange = { fg = cobaltic.bright_yellow }, -- diff mode: Changed line |diff.txt|
		GitGutterDelete = { fg = cobaltic.bright_red }, -- diff mode: Deleted line |diff.txt|

		-- GitSigns
		GitSignsAdd = { fg = cobaltic.bright_green }, -- diff mode: Added line |diff.txt|
		GitSignsAddNr = { fg = cobaltic.bright_green }, -- diff mode: Added line |diff.txt|
		GitSignsAddLn = { fg = cobaltic.bright_green }, -- diff mode: Added line |diff.txt|
		GitSignsChange = { fg = cobaltic.bright_yellow }, -- diff mode: Changed line |diff.txt|
		GitSignsChangeNr = { fg = cobaltic.bright_yellow }, -- diff mode: Changed line |diff.txt|
		GitSignsChangeLn = { fg = cobaltic.bright_yellow }, -- diff mode: Changed line |diff.txt|
		GitSignsDelete = { fg = cobaltic.bright_red }, -- diff mode: Deleted line |diff.txt|
		GitSignsDeleteNr = { fg = cobaltic.bright_red }, -- diff mode: Deleted line |diff.txt|
		GitSignsDeleteLn = { fg = cobaltic.bright_red }, -- diff mode: Deleted line |diff.txt|
		GitSignsCurrentLineBlame = { fg = cobaltic.nord3_gui_bright, style = bold },

		-- Telescope
		TelescopePromptBorder = { fg = cobaltic.foreground },
		TelescopeResultsBorder = { fg = cobaltic.foreground },
		TelescopePreviewBorder = { fg = cobaltic.foreground },
		TelescopeSelectionCaret = { fg = cobaltic.dark_magenta },
		TelescopeSelection = { fg = cobaltic.light_white, bg = cobaltic.bright_black },
		TelescopeMatching = { link = 'Search' },

		-- NvimTree
		NvimTreeRootFolder = { fg = cobaltic.bright_magenta },
		NvimTreeSymlink = { fg = cobaltic.dark_white },
		NvimTreeFolderName = { fg = cobaltic.foreground },
		NvimTreeFolderIcon = { fg = cobaltic.dark_magenta },
		NvimTreeEmptyFolderName = { fg = cobaltic.foreground },
		NvimTreeOpenedFolderName = { fg = cobaltic.dark_white },
		NvimTreeExecFile = { fg = cobaltic.foreground },
		NvimTreeOpenedFile = { fg = cobaltic.light_white },
		NvimTreeSpecialFile = { fg = cobaltic.foreground, style = bold},
		NvimTreeImageFile = { fg = cobaltic.foreground },
		NvimTreeMarkdownFile = { fg = cobaltic.foreground },
		NvimTreeIndentMarker = { fg = cobaltic.dark_magenta },
		NvimTreeGitDirty = { fg = cobaltic.bright_yellow }, -- diff mode: Changed line |diff.txt|
		NvimTreeGitStaged = { fg = cobaltic.bright_yellow }, -- diff mode: Changed line |diff.txt|
		NvimTreeGitMerge = { fg = cobaltic.bright_yellow }, -- diff mode: Changed line |diff.txt|
		NvimTreeGitRenamed = { fg = cobaltic.bright_yellow }, -- diff mode: Changed line |diff.txt|
		NvimTreeGitNew = { fg = cobaltic.bright_green }, -- diff mode: Added line |diff.txt|
		NvimTreeGitDeleted = { fg = cobaltic.bright_red },	-- diff mode: Deleted line |diff.txt|
		NvimTreeGitIgnored = { fg = cobaltic.nord3_gui_bright },
		LspDiagnosticsError = { fg = cobaltic.bright_orange },
		LspDiagnosticsWarning = { fg = cobaltic.bright_magenta },
		LspDiagnosticsInformation = { fg = cobaltic.dark_blue },
		LspDiagnosticsHint = { fg = cobaltic.dark_magenta },

		-- WhichKey
		WhichKey = { fg = cobaltic.dark_yellow, style = bold },
		WhichKeyGroup = { fg = cobaltic.dark_white },
		WhichKeyDesc = { fg = cobaltic.dark_cyan, style = italic },
		WhichKeySeperator = { fg = cobaltic.dark_magenta },
		WhichKeyFloating = { bg = cobaltic.dark_black },
		WhichKeyFloat = { bg = cobaltic.dark_black },
		WhichKeyValue = { fg = cobaltic.dark_cyan },

		-- LspSaga
		DiagnosticError = { fg = cobaltic.bright_orange },
		DiagnosticWarning = { fg = cobaltic.bright_magenta },
		DiagnosticInformation = { fg = cobaltic.dark_blue },
		DiagnosticHint = { fg = cobaltic.dark_magenta },
		DiagnosticTruncateLine = { fg = cobaltic.foreground },
		LspFloatWinBorder = { fg = cobaltic.foreground, bg = cobaltic.float },
		LspSagaDefPreviewBorder = { fg = cobaltic.foreground, bg = cobaltic.float },
		DefinitionIcon = { fg = cobaltic.dark_cyan },
		TargetWord = { fg = cobaltic.light_white, style = 'bold' },
		-- LspSaga code action
		LspSagaCodeActionTitle = { link = 'Title' },
		LspSagaCodeActionBorder = { fg = cobaltic.foreground, bg = cobaltic.float },
		LspSagaCodeActionTrunCateLine = { link = 'LspSagaCodeActionBorder' },
		LspSagaCodeActionContent = { fg = cobaltic.foreground },
		-- LspSag finder
		LspSagaLspFinderBorder = { fg = cobaltic.foreground, bg = cobaltic.float },
		LspSagaAutoPreview = { fg = cobaltic.foreground },
		LspSagaFinderSelection = { fg = cobaltic.light_white, bg = cobaltic.bright_black },
		TargetFileName = { fg = cobaltic.foreground },
		FinderParam = { fg = cobaltic.bright_magenta, bold = true },
		FinderVirtText = { fg = cobaltic.nord15_gui15 , bg = cobaltic.none },
		DefinitionsIcon = { fg = cobaltic.dark_magenta },
		Definitions = { fg = cobaltic.bright_magenta, bold = true },
		DefinitionCount = { fg = cobaltic.dark_blue },
		ReferencesIcon = { fg = cobaltic.dark_magenta },
		References = { fg = cobaltic.bright_magenta, bold = true },
		ReferencesCount = { fg = cobaltic.dark_blue },
		ImplementsIcon = { fg = cobaltic.dark_magenta },
		Implements = { fg = cobaltic.bright_magenta, bold = true },
		ImplementsCount = { fg = cobaltic.dark_blue },
		-- LspSaga finder spinner
		FinderSpinnerBorder = { fg = cobaltic.foreground, bg = cobaltic.float },
		FinderSpinnerTitle = { link = 'Title' },
		FinderSpinner = { fg = cobaltic.dark_yellow, bold = true },
		FinderPreviewSearch = { link = 'Search' },
		-- LspSaga definition
		DefinitionBorder = { fg = cobaltic.foreground, bg = cobaltic.float },
		DefinitionArrow = { fg = cobaltic.dark_yellow },
		DefinitionSearch = { link = 'Search' },
		DefinitionFile = { fg = cobaltic.foreground, bg = cobaltic.float },
		-- LspSaga hover
		LspSagaHoverBorder = { fg = cobaltic.foreground, bg = cobaltic.float },
		LspSagaHoverTrunCateLine = { link = 'LspSagaHoverBorder' },
		-- Lsp rename
		LspSagaRenameBorder = { fg = cobaltic.foreground, bg = cobaltic.float },
		LspSagaRenameMatch = { fg = cobaltic.light_white, bg = cobaltic.dark_magenta },
		-- Lsp diagnostic
		LspSagaDiagnosticSource = { link = 'Comment' },
		LspSagaDiagnosticError = { link = 'DiagnosticError' },
		LspSagaDiagnosticWarn = { link = 'DiagnosticWarn' },
		LspSagaDiagnosticInfo = { link = 'DiagnosticInfo' },
		LspSagaDiagnosticHint = { link = 'DiagnosticHint' },
		LspSagaErrorTrunCateLine = { link = 'DiagnosticError' },
		LspSagaWarnTrunCateLine = { link = 'DiagnosticWarn' },
		LspSagaInfoTrunCateLine = { link = 'DiagnosticInfo' },
		LspSagaHintTrunCateLine = { link = 'DiagnosticHint' },
		LspSagaDiagnosticBorder = { fg = cobaltic.foreground, bg = cobaltic.float },
		LspSagaDiagnosticHeader = { fg = cobaltic.foreground },
		DiagnosticQuickFix = { fg = cobaltic.bright_green, bold = true },
		DiagnosticMap = { fg = cobaltic.bright_magenta },
		DiagnosticLineCol = { fg = cobaltic.foreground },
		LspSagaDiagnosticTruncateLine = { link = 'LspSagaDiagnosticBorder' },
		ColInLineDiagnostic = { link = 'Comment' },
		-- LspSaga signture help
		LspSagaSignatureHelpBorder = { fg = cobaltic.foreground, bg = cobaltic.float },
		LspSagaShTrunCateLine = { link = 'LspSagaSignatureHelpBorder' },
		-- Lspsaga lightbulb
		LspSagaLightBulb = { link = 'DiagnosticSignHint' },
		-- LspSaga shadow
		SagaShadow = { fg = 'black' },
		-- LspSaga float
		LspSagaBorderTitle = { link = 'Title' },
		-- LspSaga Outline
		LSOutlinePreviewBorder = { fg = cobaltic.foreground, bg = cobaltic.float },
		OutlineIndentEvn = { fg = cobaltic.bright_magenta },
		OutlineIndentOdd = { fg = cobaltic.bright_orange },
		OutlineFoldPrefix = { fg = cobaltic.bright_red },
		OutlineDetail = { fg = cobaltic.foreground },
		-- LspSaga all floatwindow
		LspFloatWinNormal = { fg = cobaltic.foreground, bg = cobaltic.float },
		-- Saga End

		-- Sneak
		Sneak = { fg = cobaltic.background, bg = cobaltic.foreground },
		SneakScope = { bg = cobaltic.dark_black },

		-- Cmp
		CmpItemKind = { fg = cobaltic.bright_magenta },
		CmpItemAbbrMatch = { fg = cobaltic.dark_white, style = bold },
		CmpItemAbbrMatchFuzzy = { fg = cobaltic.dark_white, style = bold },
		CmpItemAbbr = { fg = cobaltic.foreground },
		CmpItemMenu = { fg = cobaltic.bright_green },

		-- Indent Blankline
		IndentBlanklineChar = { fg = cobaltic.nord3_gui },
		IndentBlanklineContextChar = { fg = cobaltic.dark_blue },

		-- headline
		-- bg = (10 * nord0 + fg) / 11
		Headline1 = { fg = cobaltic.bright_orange, bg = "#3d3c44", bold = true },
		Headline2 = { fg = cobaltic.bright_yellow, bg = "#3f4247", bold = true },
		Headline3 = { fg = cobaltic.bright_green, bg = "#394147", bold = true },
		Headline4 = { fg = cobaltic.dark_magenta, bg = "#363e4c", bold = true },
		Headline5 = { fg = cobaltic.bright_magenta, bg = "#3a3c4a", bold = true },
		Headline6 = { fg = cobaltic.foreground, bg = "#3d434f", bold = true },

		Quote = { fg = cobaltic.bright_black },
		CodeBlock = { bg = cobaltic.dark_black },
		Dash = { cobaltic.dark_blue, bold = true },

		-- Illuminate
		illuminatedWord = { bg = cobaltic.nord3_gui },
		illuminatedCurWord = { bg = cobaltic.nord3_gui },
		IlluminatedWordText = { bg = cobaltic.nord3_gui },
		IlluminatedWordRead = { bg = cobaltic.nord3_gui },
		IlluminatedWordWrite = { bg = cobaltic.nord3_gui },

		-- nvim-dap
		DapBreakpoint = { fg = cobaltic.bright_green },
		DapStopped = { fg = cobaltic.bright_magenta },

		-- nvim-dap-ui
		DapUIVariable = { fg = cobaltic.foreground },
		DapUIScope = { fg = cobaltic.dark_yellow },
		DapUIType = { fg = cobaltic.dark_magenta },
		DapUIValue = { fg = cobaltic.foreground },
		DapUIModifiedValue = { fg = cobaltic.dark_yellow },
		DapUIDecoration = { fg = cobaltic.dark_yellow },
		DapUIThread = { fg = cobaltic.dark_yellow },
		DapUIStoppedThread = { fg = cobaltic.dark_yellow },
		DapUIFrameName = { fg = cobaltic.foreground },
		DapUISource = { fg = cobaltic.dark_magenta },
		DapUILineNumber = { fg = cobaltic.dark_yellow },
		DapUIFloatBorder = { fg = cobaltic.dark_yellow },
		DapUIWatchesEmpty = { fg = cobaltic.bright_red },
		DapUIWatchesValue = { fg = cobaltic.dark_yellow },
		DapUIWatchesError = { fg = cobaltic.bright_red },
		DapUIBreakpointsPath = { fg = cobaltic.dark_yellow },
		DapUIBreakpointsInfo = { fg = cobaltic.dark_yellow },
		DapUIBreakpointsCurrentLine = { fg = cobaltic.dark_yellow },
		DapUIBreakpointsLine = { fg = cobaltic.dark_yellow },

		-- Hop
		HopNextKey = { fg = cobaltic.foreground, style = bold },
		HopNextKey1 = { fg = cobaltic.dark_yellow, style = bold },
		HopNextKey2 = { fg = cobaltic.foreground },
		HopUnmatched = { fg = cobaltic.nord3_gui },

		-- Fern
		FernBranchText = { fg = cobaltic.nord3_gui_bright },

		-- nvim-ts-rainbow
		rainbowcol1 = { fg = cobaltic.bright_magenta },
		rainbowcol2 = { fg = cobaltic.bright_yellow },
		rainbowcol3 = { fg = cobaltic.bright_red },
		rainbowcol4 = { fg = cobaltic.dark_cyan },
		rainbowcol5 = { fg = cobaltic.dark_yellow },
		rainbowcol6 = { fg = cobaltic.bright_magenta },
		rainbowcol7 = { fg = cobaltic.bright_yellow },

		-- rainbow-delimiters.nvim
                RainbowDelimiterRed = { fg = cobaltic.bright_red },
                RainbowDelimiterYellow = { fg = cobaltic.bright_yellow },
                RainbowDelimiterBlue = { fg = cobaltic.dark_magenta },
                RainbowDelimiterOrange = { fg = cobaltic.bright_orange },
                RainbowDelimiterGreen = { fg = cobaltic.bright_green },
                RainbowDelimiterCyan = { fg = cobaltic.dark_yellow },
                RainbowDelimiterViolet = { fg = cobaltic.bright_magenta },

		-- lightspeed
		LightspeedLabel = { fg = cobaltic.dark_yellow, style = bold },
		LightspeedLabelOverlapped = { fg = cobaltic.dark_yellow, style = "bold,underline" },
		LightspeedLabelDistant = { fg = cobaltic.bright_magenta, style = bold },
		LightspeedLabelDistantOverlapped = { fg = cobaltic.bright_magenta, style = "bold,underline" },
		LightspeedShortcut = { fg = cobaltic.dark_blue, style = bold },
		LightspeedShortcutOverlapped = { fg = cobaltic.dark_blue, style = "bold,underline" },
		LightspeedMaskedChar = { fg = cobaltic.foreground, bg = cobaltic.bright_black, style = bold },
		LightspeedGreyWash = { fg = cobaltic.nord3_gui_bright },
		LightspeedUnlabeledMatch = { fg = cobaltic.foreground, bg = cobaltic.dark_black },
		LightspeedOneCharMatch = { fg = cobaltic.dark_yellow, style = "bold,reverse" },
		LightspeedUniqueChar = { style = "bold,underline" },

		-- copilot
		CopilotLabel = { fg = cobaltic.nord3_gui, bg = cobaltic.none },

		-- Statusline
		StatusLineDull = { fg = cobaltic.nord3_gui, bg = cobaltic.dark_black },
		StatusLineAccent = { fg = cobaltic.background, bg = cobaltic.bright_yellow },

		-- mini.nvim
		MiniCompletionActiveParameter = { style = "underline" },

		MiniCursorword = { bg = cobaltic.nord3_gui },
		MiniCursorwordCurrent = { bg = cobaltic.nord3_gui },

		MiniIndentscopeSymbol = { fg = cobaltic.dark_blue },
		MiniIndentscopePrefix = { style = "nocombine" }, -- Make it invisible

		MiniJump = { fg = cobaltic.background, bg = cobaltic.foreground },

		MiniJump2dSpot = { fg = cobaltic.bright_orange, style = "bold,nocombine" },

		MiniStarterCurrent = { style = "nocombine" },
		MiniStarterFooter = { fg = cobaltic.bright_green, style = italic },
		MiniStarterHeader = { fg = cobaltic.dark_magenta },
		MiniStarterInactive = { link = "Comment" },
		MiniStarterItem = { link = "Normal" },
		MiniStarterItemBullet = { fg = cobaltic.foreground },
		MiniStarterItemPrefix = { fg = cobaltic.bright_magenta },
		MiniStarterSection = { fg = cobaltic.foreground },
		MiniStarterQuery = { fg = cobaltic.dark_blue },

		MiniStatuslineDevinfo = { fg = cobaltic.foreground, bg = cobaltic.bright_black },
		MiniStatuslineFileinfo = { fg = cobaltic.foreground, bg = cobaltic.bright_black },
		MiniStatuslineFilename = { fg = cobaltic.foreground, bg = cobaltic.dark_black },
		MiniStatuslineInactive = { fg = cobaltic.foreground, bg = cobaltic.background, style = bold },
		MiniStatuslineModeCommand = { fg = cobaltic.background, bg = cobaltic.bright_magenta, style = bold },
		MiniStatuslineModeInsert = { fg = cobaltic.dark_black, bg = cobaltic.foreground, style = bold },
		MiniStatuslineModeNormal = { fg = cobaltic.dark_black, bg = cobaltic.dark_magenta, style = bold },
		MiniStatuslineModeOther = { fg = cobaltic.background, bg = cobaltic.bright_yellow, style = bold },
		MiniStatuslineModeReplace = { fg = cobaltic.background, bg = cobaltic.bright_red, style = bold },
		MiniStatuslineModeVisual = { fg = cobaltic.background, bg = cobaltic.dark_cyan, style = bold },

		MiniSurround = { link = "IncSearch" },

		MiniTablineCurrent = { bg = cobaltic.dark_black },
		MiniTablineFill = { link = "TabLineFill" },
		MiniTablineHidden = { bg = cobaltic.background, fg = cobaltic.nord3_gui },
		MiniTablineModifiedCurrent = { bg = cobaltic.dark_black, fg = cobaltic.bright_magenta },
		MiniTablineModifiedHidden = { bg = cobaltic.background, fg = cobaltic.bright_magenta },
		MiniTablineModifiedVisible = { bg = cobaltic.bright_black, fg = cobaltic.bright_magenta },
		MiniTablineTabpagesection = { fg = cobaltic.dark_blue, bg = cobaltic.light_white, style = reverse_bold },
		MiniTablineVisible = { bg = cobaltic.bright_black },

		MiniTestEmphasis = { style = bold },
		MiniTestFail = { fg = cobaltic.bright_red, style = bold },
		MiniTestPass = { fg = cobaltic.bright_green, style = bold },

		MiniTrailspace = { bg = cobaltic.bright_red },

		-- Aerail
		AerialLine = { bg = cobaltic.bright_black },
		AerialLineNC = { bg = cobaltic.bright_black },

		AerialArrayIcon = { fg = cobaltic.bright_yellow },
		AerialBooleanIcon = { fg = cobaltic.dark_magenta, style = bold },
		AerialClassIcon = { fg = cobaltic.dark_magenta },
		AerialConstantIcon = { fg = cobaltic.bright_yellow },
		AerialConstructorIcon = { fg = cobaltic.dark_magenta },
		AerialEnumIcon = { fg = cobaltic.dark_magenta },
		AerialEnumMemberIcon = { fg = cobaltic.foreground },
		AerialEventIcon = { fg = cobaltic.dark_magenta },
		AerialFieldIcon = vim.g.nord_italic and { fg = cobaltic.foreground, style = italic } or { fg = cobaltic.foreground },
		AerialFileIcon = { fg = cobaltic.bright_green },
		AerialFunctionIcon = vim.g.nord_italic and { fg = cobaltic.dark_yellow, style = italic } or { fg = cobaltic.dark_yellow },
		AerialInterfaceIcon = { fg = cobaltic.dark_magenta },
		AerialKeyIcon = { fg = cobaltic.dark_magenta },
		AerialMethodIcon = vim.g.nord_italic and { fg = cobaltic.dark_cyan, style = italic } or { fg = cobaltic.dark_cyan },
		AerialModuleIcon = vim.g.nord_italic and { fg = cobaltic.foreground, style = italic } or { fg = cobaltic.foreground },
		AerialNamespaceIcon = vim.g.nord_italic and { fg = cobaltic.foreground, style = italic }
			or { fg = cobaltic.foreground },
		AerialNullIcon = { fg = cobaltic.dark_magenta },
		AerialNumberIcon = { fg = cobaltic.bright_magenta },
		AerialObjectIcon = { fg = cobaltic.dark_magenta },
		AerialOperatorIcon = { fg = cobaltic.dark_magenta },
		AerialPackageIcon = vim.g.nord_italic and { fg = cobaltic.foreground, style = italic } or { fg = cobaltic.foreground },
		AerialPropertyIcon = vim.g.nord_italic and { fg = cobaltic.foreground, style = italic }
			or { fg = cobaltic.dark_blue },
		AerialStringIcon = vim.g.nord_italic and { fg = cobaltic.bright_green, style = italic } or { fg = cobaltic.bright_green },
		AerialStructIcon = { fg = cobaltic.dark_magenta },
		AerialTypeParameterIcon = { fg = cobaltic.dark_blue },
		AerialVariableIcon = { fg = cobaltic.foreground, style = bold },

		AerialArray = { fg = cobaltic.bright_yellow },
		AerialBoolean = { fg = cobaltic.dark_magenta, style = bold },
		AerialClass = { fg = cobaltic.dark_magenta },
		AerialConstant = { fg = cobaltic.bright_yellow },
		AerialConstructor = { fg = cobaltic.dark_magenta },
		AerialEnum = { fg = cobaltic.dark_magenta },
		AerialEnumMember = { fg = cobaltic.foreground },
		AerialEvent = { fg = cobaltic.dark_magenta },
		AerialField = vim.g.nord_italic and { fg = cobaltic.foreground, style = italic } or { fg = cobaltic.foreground },
		AerialFile = { fg = cobaltic.bright_green },
		AerialFunction = vim.g.nord_italic and { fg = cobaltic.dark_yellow, style = italic } or { fg = cobaltic.dark_yellow },
		AerialInterface = { fg = cobaltic.dark_magenta },
		AerialKey = { fg = cobaltic.dark_magenta },
		AerialMethod = vim.g.nord_italic and { fg = cobaltic.dark_cyan, style = italic } or { fg = cobaltic.dark_cyan },
		AerialModule = vim.g.nord_italic and { fg = cobaltic.foreground, style = italic } or { fg = cobaltic.foreground },
		AerialNamespace = vim.g.nord_italic and { fg = cobaltic.foreground, style = italic } or { fg = cobaltic.foreground },
		AerialNull = { fg = cobaltic.dark_magenta },
		AerialNumber = { fg = cobaltic.bright_magenta },
		AerialObject = { fg = cobaltic.dark_magenta },
		AerialOperator = { fg = cobaltic.dark_magenta },
		AerialPackage = vim.g.nord_italic and { fg = cobaltic.foreground, style = italic } or { fg = cobaltic.foreground },
		AerialProperty = vim.g.nord_italic and { fg = cobaltic.foreground, style = italic } or { fg = cobaltic.dark_blue },
		AerialString = vim.g.nord_italic and { fg = cobaltic.bright_green, style = italic } or { fg = cobaltic.bright_green },
		AerialStruct = { fg = cobaltic.dark_magenta },
		AerialTypeParameter = { fg = cobaltic.dark_blue },
		AerialVariable = { fg = cobaltic.foreground, style = bold },

		-- nvim-navic
		NavicIconsArray = { fg = cobaltic.bright_yellow },
		NavicIconsBoolean = { fg = cobaltic.dark_magenta, style = bold },
		NavicIconsClass = { fg = cobaltic.dark_magenta },
		NavicIconsConstant = { fg = cobaltic.bright_yellow },
		NavicIconsConstructor = { fg = cobaltic.dark_magenta },
		NavicIconsEnum = { fg = cobaltic.dark_magenta },
		NavicIconsEnumMember = { fg = cobaltic.foreground },
		NavicIconsEvent = { fg = cobaltic.dark_magenta },
		NavicIconsField = { fg = cobaltic.foreground, style = italic },
		NavicIconsFile = { fg = cobaltic.bright_green },
		NavicIconsFunction = { fg = cobaltic.dark_yellow, style = italic },
		NavicIconsInterface = { fg = cobaltic.dark_magenta },
		NavicIconsKey = { fg = cobaltic.dark_magenta },
		NavicIconsMethod = { fg = cobaltic.dark_cyan, style = italic },
		NavicIconsModule = { fg = cobaltic.foreground, style = italic },
		NavicIconsNamespace = { fg = cobaltic.foreground, style = italic },
		NavicIconsNull = { fg = cobaltic.dark_magenta },
		NavicIconsNumber = { fg = cobaltic.bright_magenta },
		NavicIconsObject = { fg = cobaltic.dark_magenta },
		NavicIconsOperator = { fg = cobaltic.dark_magenta },
		NavicIconsPackage = { fg = cobaltic.foreground, style = italic },
		NavicIconsProperty = { fg = cobaltic.foreground, style = italic },
		NavicIconsString = { fg = cobaltic.bright_green, style = italic },
		NavicIconsStruct = { fg = cobaltic.dark_magenta },
		NavicIconsTypeParameter = { fg = cobaltic.dark_blue },
		NavicIconsVariable = { fg = cobaltic.foreground, style = bold },
		NavicText = { fg = cobaltic.foreground },
		NavicSeparator = { fg = cobaltic.foreground },
	}
	-- Options:

	-- Disable nvim-tree background
	if vim.g.nord_disable_background then
		plugins.NvimTreeNormal = { fg = cobaltic.foreground, bg = cobaltic.none }
	else
		plugins.NvimTreeNormal = { fg = cobaltic.foreground, bg = cobaltic.sidebar }
	end

	if vim.g.nord_enable_sidebar_background then
		plugins.NvimTreeNormal = { fg = cobaltic.foreground, bg = cobaltic.sidebar }
	else
		plugins.NvimTreeNormal = { fg = cobaltic.foreground, bg = cobaltic.none }
	end

	return plugins
end

return theme
