local colors = require("base16").get_theme_tb("base_30")
return {
	TblineFill = { bg = colors.black2 },
	TbLineBufOn = { fg = colors.white, bg = colors.black },
	TbLineBufOff = { fg = colors.light_grey, bg = colors.black2 },
	TbLineBufOnModified = { fg = colors.green, bg = colors.black },
	TbBufLineBufOffModified = { fg = colors.red, bg = colors.black2 },
	TbLineBufOnClose = { fg = colors.black, bg = colors.red },
	TbLineBufOffClose = { fg = colors.light_grey, bg = colors.black2 },
	TblineTabNewBtn = { fg = colors.white, bg = colors.one_bg3, bold = true },
	TbLineTabOn = { fg = colors.black, bg = colors.nord_blue, bold = true },
	TbLineTabOff = { fg = colors.white, bg = colors.one_bg2 },
	TbLineTabCloseBtn = { fg = colors.black, bg = colors.nord_blue },
	TBTabTitle = { fg = colors.black, bg = colors.white },
	TbLineCloseAllBufsBtn = { bold = true, bg = colors.black, fg = colors.red },
}
