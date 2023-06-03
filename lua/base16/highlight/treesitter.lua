-- local theme = require("base16").get_theme_tb "base_30"

-- return {
--   TSAnnotation = { fg = theme.blue },
--   TSAttribute = { fg = theme.cyan },
--   TSConstructor = { fg = theme.yellow },
--   TSType = { fg = theme.yellow },
--   TSTypeBuiltin = { fg = theme.yellow },
--   TSConditional = { fg = theme.dark_purple },
--   TSException = { fg = theme.purple },
--   TSInclude = { fg = theme.purple },
--   TSKeyword = { fg = theme.dark_purple },
--   TSKeywordReturn = { fg = theme.dark_purple },
--   TSKeywordFunction = { fg = theme.dark_purple },
--   TSLabel = { fg = theme.blue },
--   TSNone = { fg = theme.white },
--   TSNamespace = { fg = theme.purple },
--   TSRepeat = { fg = theme.purple },
--   TSConstant = { fg = theme.yellow },
--   TSConstBuiltin = { fg = theme.orange },
--   TSFloat = { fg = theme.orange },
--   TSNumber = { fg = theme.yellow },
--   TSBoolean = { fg = theme.yellow },
--   TSCharacter = { fg = theme.green },
--   TSError = { fg = theme.error_red },
--   TSFunction = { fg = theme.blue },
--   TSFuncBuiltin = { fg = theme.blue },
--   TSMethod = { fg = theme.blue },
--   TSConstMacro = { fg = theme.cyan },
--   TSFuncMacro = { fg = theme.blue },
--   TSProperty = { fg = theme.cyan },
--   TSOperator = { fg = theme.dark_purple },
--   TSField = { fg = theme.blue },
--   TSParameter = { fg = theme.red },
--   TSParameterReference = { fg = theme.red },
--   TSVariable = { fg = theme.white },
--   TSVariableBuiltin = { fg = theme.red },
--   TSSymbol = { fg = theme.cyan },
--   TSText = { fg = theme.white },
--   TSTextReference = { fg = theme.red },
--   TSPunctDelimiter = { fg = theme.white },
--   TSTagDelimiter = { fg = theme.grey },
--   TSTagAttribute = { fg = theme.orange },
--   TSPunctBracket = { fg = theme.white },
--   TSPunctSpecial = { fg = theme.white },
--   TSString = { fg = theme.green },
--   TSStringRegex = { fg = theme.orange },
--   TSStringEscape = { fg = theme.orange },
--   TSTag = { fg = theme.blue },
--   TSEmphasis = { italic = true },
--   TSUnderline = { underline = true },
--   TSNote = { fg = theme.yellow, bold = true },
--   TSWarning = { fg = theme.orange, bold = true },
--   TSDanger = { fg = theme.red, bold = true },
--   TSTitle = { fg = theme.blue },
--   TSLiteral = { fg = theme.green },
--   TSURI = { fg = theme.blue },
--   TSMath = { fg = theme.white },
--   TSKeywordOperator = { fg = theme.purple },
--   TSStructure = { fg = theme.white },
--   TSStrong = { fg = theme.yellow },
--   TSQueryLinterError = { fg = theme.orange },
--   TSEnvironment = { fg = theme.white },
--   TSEnvironmentName = { fg = theme.white },
-- }

local theme = require("base16").get_theme_tb "base_16"

return {
  -- `@annotation` is not one of the default capture group, should we keep it
  ["@annotation"] = {
    fg = theme.base0F,
  },

  ["@attribute"] = {
    fg = theme.base0A,
  },

  ["@character"] = {
    fg = theme.base08,
  },

  ["@constructor"] = {
    fg = theme.base0C,
  },

  ["@constant"] = {
    fg = theme.base08,
  },

  ["@constant.builtin"] = {
    fg = theme.base09,
  },

  ["@constant.macro"] = {
    fg = theme.base08,
  },

  ["@error"] = {
    fg = theme.base08,
  },

  ["@exception"] = {
    fg = theme.base08,
  },

  ["@float"] = {
    fg = theme.base09,
  },

  ["@keyword"] = {
    fg = theme.base0E,
  },

  ["@keyword.function"] = {
    fg = theme.base0E,
  },

  ["@keyword.return"] = {
    fg = theme.base0E,
  },

  ["@function"] = {
    fg = theme.base0D,
  },

  ["@function.builtin"] = {
    fg = theme.base0D,
  },

  ["@function.macro"] = {
    fg = theme.base08,
  },

  ["@function.call"] = {
    fg = theme.base0D,
  },

  ["@operator"] = {
    fg = theme.base05,
  },

  ["@keyword.operator"] = {
    fg = theme.base0E,
  },

  ["@method"] = {
    fg = theme.base0D,
  },

  ["@method.call"] = {
    fg = theme.base0D,
  },

  ["@namespace"] = {
    fg = theme.base08,
  },

  ["@none"] = {
    fg = theme.base05,
  },

  ["@parameter"] = {
    fg = theme.base08,
  },

  ["@reference"] = {
    fg = theme.base05,
  },

  ["@punctuation.bracket"] = {
    fg = theme.base0F,
  },

  ["@punctuation.delimiter"] = {
    fg = theme.base0F,
  },

  ["@punctuation.special"] = {
    fg = theme.base08,
  },

  ["@string"] = {
    fg = theme.base0B,
  },

  ["@string.regex"] = {
    fg = theme.base0C,
  },

  ["@string.escape"] = {
    fg = theme.base0C,
  },

  ["@string.special"] = {
    fg = theme.base0C,
  },

  ["@symbol"] = {
    fg = theme.base0B,
  },

  ["@tag"] = {
    link = "Tag",
  },

  ["@tag.attribute"] = {
    link = "@property",
  },

  ["@tag.delimiter"] = {
    fg = theme.base0F,
  },

  ["@text"] = {
    fg = theme.base05,
  },

  ["@text.strong"] = {
    bold = true,
  },

  ["@text.emphasis"] = {
    fg = theme.base09,
  },

  ["@text.strike"] = {
    fg = theme.base0F,
    strikethrough = true,
  },

  ["@text.literal"] = {
    fg = theme.base09,
  },

  ["@text.uri"] = {
    fg = theme.base09,
    underline = true,
  },

  ["@type.builtin"] = {
    fg = theme.base0A,
  },

  ["@variable"] = {
    fg = theme.base05,
  },

  ["@variable.builtin"] = {
    fg = theme.base09,
  },

  -- variable.global

  ["@definition"] = {
    sp = theme.base04,
    underline = true,
  },

  -- TSDefinitionUsage = {
  --   sp = theme.base04,
  --   underline = true,
  -- },

  ["@scope"] = {
    bold = true,
  },

  ["@field"] = {
    fg = theme.base08,
  },

  ["@field.key"] = {
    fg = theme.base08,
  },

  ["@property"] = {
    fg = theme.base08,
  },

  ["@include"] = {
    link = "Include",
  },

  ["@conditional"] = {
    link = "Conditional",
  },
}
