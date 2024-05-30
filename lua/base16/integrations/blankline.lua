local colors = require("base16").get_theme_tb("base_30")

return {
  IndentBlanklineChar = { fg = colors.line },
  IndentBlanklineSpaceChar = { fg = colors.line },
  IndentBlanklineContextChar = { fg = colors.blue },
  IblChar = { fg = colors.line },
  IblScopeChar = { fg = colors.grey },
  ["@ibl.scope.underline.1"] = { bg = colors.black2 },
}
