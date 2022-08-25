local colors = require("base16").get_theme_tb "base_30"
local base16 = require("base16").get_theme_tb "base_16"
return {
  NavicIconsFile = { fg = base16.base07 },
  NavicIconsModule = { fg = base16.base0A },
  NavicIconsNamespace = { fg = base16.base0A },
  NavicIconsPackage = { fg = base16.base0A },
  NavicIconsClass = { fg = colors.orange, bg = "NONE" },
  NavicIconsArray = { fg = colors.orange, bg = "NONE" },
  NavicIconsObject = { fg = colors.orange, bg = "NONE" },
  NavicIconsMethod = { fg = base16.base0D },
  NavicIconsProperty = { fg = base16.base08 },
  NavicIconsField = { fg = base16.base08 },
  NavicIconsConstructor = { fg = colors.blue, bg = "NONE" },
  NavicIconsEnum = { fg = colors.orange, bg = "NONE" },
  NavicIconsInterface = { fg = colors.orange, bg = "NONE" },
  NavicIconsFunction = { fg = colors.purple, bg = "NONE" },
  NavicIconsVariable = { fg = colors.blue, bg = "NONE" },
  NavicIconsConstant = { fg = colors.blue, bg = "NONE" },
  NavicIconsString = { fg = colors.orange, bg = "NONE" },
  NavicIconsNumber = { fg = colors.green, bg = "NONE" },
  NavicIconsBoolean = { fg = colors.blue, bg = "NONE" },
  NavicIconsKey = { fg = colors.white, bg = "NONE" },
  NavicIconsKeyword = { fg = colors.white, bg = "NONE" },
  NavicIconsNull = { fg = colors.blue, bg = "NONE" },
  NavicIconsEnumMember = { fg = colors.blue, bg = "NONE" },
  NavicIconsStruct = { fg = colors.orange, bg = "NONE" },
  NavicIconsEvent = { fg = colors.yellow, bg = "NONE" },
  NavicIconsOperator = { fg = colors.white, bg = "NONE" },
  NavicIconsTypeParameter = { fg = colors.white, bg = "NONE" },
  NavicText = { fg = colors.grey, bg = "NONE" },
  NavicSeparator = { fg = colors.grey, bg = "NONE" },
}