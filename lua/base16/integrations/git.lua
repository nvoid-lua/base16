local colors = require("base16").get_theme_tb("base_30")
local theme = require("base16").get_theme_tb("base_16")

return {
	diffOldFile = { fg = colors.baby_pink },
	diffNewFile = { fg = colors.blue },
	DiffAdd = { fg = colors.blue },
	DiffAdded = { fg = colors.green },
	DiffChange = { fg = colors.light_grey },
	DiffChangeDelete = { fg = colors.red },
	DiffModified = { fg = colors.orange },
	DiffDelete = { fg = colors.red },
	DiffRemoved = { fg = colors.red },
	gitcommitOverflow = { fg = theme.base08 },
	gitcommitSummary = { fg = theme.base0B },
	gitcommitComment = { fg = theme.base03 },
	gitcommitUntracked = { fg = theme.base03 },
	gitcommitDiscarded = { fg = theme.base03 },
	gitcommitSelected = { fg = theme.base03 },
	gitcommitHeader = { fg = theme.base0E },
	gitcommitSelectedType = { fg = theme.base0D },
	gitcommitUnmergedType = { fg = theme.base0D },
	gitcommitDiscardedType = { fg = theme.base0D },
	gitcommitUntrackedFile = { fg = theme.base0A },
	DiffFile = { fg = colors.cyan },
	DiffIndexLine = { fg = colors.grey },
	GitSignsAdd = { fg = colors.blue },
	GitSignsChange = { fg = colors.light_grey },
	GitSignsDelete = { fg = colors.red },
	SignAdd = { fg = colors.blue },
	SignChange = { fg = colors.light_grey },
	SignDelete = { fg = colors.red },

	gitcommitBranch = {
		fg = theme.base09,
		bold = true,
	},

	DiffText = {
		fg = colors.white,
		bg = colors.black2,
	},

	gitcommitUnmergedFile = {
		fg = theme.base08,
		bold = true,
	},

	gitcommitDiscardedFile = {
		fg = theme.base08,
		bold = true,
	},

	gitcommitSelectedFile = {
		fg = theme.base0B,
		bold = true,
	},
}
