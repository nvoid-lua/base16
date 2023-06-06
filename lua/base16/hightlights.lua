local colors = require("base16").get_theme_tb "base_30"
local theme = require("base16").get_theme_tb "base_16"

return {
  -- Blankline
  IndentBlanklineChar = { fg = colors.line },
  IndentBlanklineSpaceChar = { fg = colors.line },
  IndentBlanklineContextChar = { fg = colors.blue },

  -- nvim cmp
  CmpItemAbbr = { fg = colors.white },
  CmpItemAbbrMatch = { fg = colors.blue, bold = true },
  CmpBorder = { fg = colors.grey },
  CmpDocBorder = { fg = colors.grey },

  -- cmp item kinds
  CmpItemKindConstant = { fg = theme.base09 },
  CmpItemKindFunction = { fg = theme.base0D },
  CmpItemKindIdentifier = { fg = theme.base08 },
  CmpItemKindField = { fg = theme.base08 },
  CmpItemKindVariable = { fg = theme.base0E },
  CmpItemKindSnippet = { fg = colors.red },
  CmpItemKindText = { fg = theme.base0B },
  CmpItemKindStructure = { fg = theme.base0E },
  CmpItemKindType = { fg = theme.base0A },
  CmpItemKindKeyword = { fg = theme.base07 },
  CmpItemKindMethod = { fg = theme.base0D },
  CmpItemKindConstructor = { fg = colors.blue },
  CmpItemKindFolder = { fg = theme.base07 },
  CmpItemKindModule = { fg = theme.base0A },
  CmpItemKindProperty = { fg = theme.base08 },
  CmpItemKindUnit = { fg = theme.base0E },
  CmpItemKindFile = { fg = theme.base07 },
  CmpItemKindColor = { fg = colors.red },
  CmpItemKindReference = { fg = theme.base05 },
  CmpItemKindStruct = { fg = theme.base0E },
  CmpItemKindOperator = { fg = theme.base05 },
  CmpItemKindTypeParameter = { fg = theme.base08 },

  -- Alpha
  AlphaHeader = { fg = colors.grey_fg },
  AlphaButtons = { fg = colors.light_grey },
  DashboardCenter = { fg = colors.purple },
  DashboardFooter = { fg = colors.cyan },
  DashboardHeader = { fg = colors.blue },
  DashboardShortcut = { fg = colors.grey_fg },

  -- Defaults
  MatchWord = {
    bg = colors.grey,
    fg = colors.white,
  },

  Pmenu = { bg = colors.one_bg },
  PmenuSbar = { bg = colors.one_bg },
  PmenuSel = { bg = colors.pmenu_bg, fg = colors.black },
  PmenuThumb = { bg = colors.grey },

  MatchParen = { link = "MatchWord" },

  Comment = { fg = colors.grey_fg },

  CursorLineNr = { fg = colors.white },
  LineNr = { fg = colors.grey },

  -- floating windows
  FloatBorder = { fg = colors.blue },
  NormalFloat = { bg = colors.darker_black },

  NvimInternalError = { fg = colors.red },
  WinSeparator = { fg = colors.line },

  Normal = {
    fg = theme.base05,
    bg = theme.base00,
  },

  Bold = {
    bold = true,
  },

  Debug = {
    fg = theme.base08,
  },

  Directory = {
    fg = theme.base0D,
  },

  Error = {
    fg = theme.base00,
    bg = theme.base08,
  },

  ErrorMsg = {
    fg = theme.base08,
    bg = theme.base00,
  },

  Exception = {
    fg = theme.base08,
  },

  FoldColumn = {
    fg = theme.base0C,
    bg = theme.base01,
  },

  Folded = {
    fg = theme.base03,
    bg = theme.base01,
  },

  IncSearch = {
    fg = theme.base01,
    bg = theme.base09,
  },

  Italic = {
    italic = true,
  },

  Macro = {
    fg = theme.base08,
  },

  ModeMsg = {
    fg = theme.base0B,
  },

  MoreMsg = {
    fg = theme.base0B,
  },

  Question = {
    fg = theme.base0D,
  },

  Search = {
    fg = theme.base01,
    bg = theme.base0A,
  },

  Substitute = {
    fg = theme.base01,
    bg = theme.base0A,
    sp = "none",
  },

  SpecialKey = {
    fg = theme.base03,
  },

  TooLong = {
    fg = theme.base08,
  },

  UnderLined = {
    underline = true,
  },

  Visual = {
    bg = theme.base02,
  },

  VisualNOS = {
    fg = theme.base08,
  },

  WarningMsg = {
    fg = theme.base08,
  },

  WildMenu = {
    fg = theme.base08,
    bg = theme.base0A,
  },

  Title = {
    fg = theme.base0D,
    sp = "none",
  },

  Conceal = {
    bg = "NONE",
  },

  Cursor = {
    fg = theme.base00,
    bg = theme.base05,
  },

  NonText = {
    fg = theme.base03,
  },

  SignColumn = {
    fg = theme.base03,
    sp = "NONE",
  },

  ColorColumn = {
    bg = theme.base01,
    sp = "none",
  },

  CursorColumn = {
    bg = theme.base01,
    sp = "none",
  },

  CursorLine = {
    bg = theme.base01
  },

  QuickFixLine = {
    bg = theme.base01,
    sp = "none",
  },

  -- spell
  SpellBad = {
    undercurl = true,
    sp = theme.base08,
  },

  SpellLocal = {
    undercurl = true,
    sp = theme.base0C,
  },

  SpellCap = {
    undercurl = true,
    sp = theme.base0D,
  },

  SpellRare = {
    undercurl = true,
    sp = theme.base0E,
  },

  healthSuccess = {
    bg = colors.green,
    fg = colors.black,
  },

  -- lazy.nvim
  LazyH1 = {
    bg = colors.green,
    fg = colors.black,
  },

  LazyButton = {
    bg = colors.one_bg,
  },

  LazyH2 = {
    fg = colors.red,
    bold = true,
    underline = true,
  },

  LazyReasonPlugin = { fg = colors.red },
  LazyValue = { fg = colors.teal },
  LazyDir = { fg = theme.base05 },
  LazyUrl = { fg = theme.base05 },
  LazyCommit = { fg = colors.green },
  LazyNoCond = { fg = colors.red },
  LazySpecial = { fg = colors.blue },
  LazyReasonFt = { fg = colors.purple },
  LazyOperator = { fg = colors.white },
  LazyReasonKeys = { fg = colors.teal },
  LazyTaskOutput = { fg = colors.white },
  LazyCommitIssue = { fg = colors.pink },
  LazyReasonEvent = { fg = colors.yellow },
  LazyReasonStart = { fg = colors.white },
  LazyReasonRuntime = { fg = colors.nord_blue },
  LazyReasonCmd = { fg = colors.sun },
  LazyReasonSource = { fg = colors.cyan },
  LazyReasonImport = { fg = colors.white },
  LazyProgressDone = { fg = colors.green },

  -- Devicons
  DevIconDefault = { fg = colors.red },
  DevIconc = { fg = colors.blue },
  DevIconcss = { fg = colors.blue },
  DevIcondeb = { fg = colors.cyan },
  DevIconDockerfile = { fg = colors.cyan },
  DevIconhtml = { fg = colors.baby_pink },
  DevIconjpeg = { fg = colors.dark_purple },
  DevIconjpg = { fg = colors.dark_purple },
  DevIconjs = { fg = colors.sun },
  DevIconkt = { fg = colors.orange },
  DevIconlock = { fg = colors.red },
  DevIconlua = { fg = colors.blue },
  DevIconmp3 = { fg = colors.white },
  DevIconmp4 = { fg = colors.white },
  DevIconout = { fg = colors.white },
  DevIconpng = { fg = colors.dark_purple },
  DevIconpy = { fg = colors.cyan },
  DevIcontoml = { fg = colors.blue },
  DevIconts = { fg = colors.teal },
  DevIconttf = { fg = colors.white },
  DevIconrb = { fg = colors.pink },
  DevIconrpm = { fg = colors.orange },
  DevIconvue = { fg = colors.vibrant_green },
  DevIconwoff = { fg = colors.white },
  DevIconwoff2 = { fg = colors.white },
  DevIconxz = { fg = colors.sun },
  DevIconzip = { fg = colors.sun },

  -- Git
  DiffFile = { fg = colors.cyan },
  DiffIndexLine = { fg = colors.grey },
  GitSignsAdd = { fg = colors.blue },
  GitSignsChange = { fg = colors.light_grey },
  GitSignsDelete = { fg = colors.red },
  SignAdd = { fg = colors.blue },
  SignChange = { fg = colors.light_grey },
  SignDelete = { fg = colors.red },

  -- Lsp
  LspReferenceRead = { bg = colors.grey, bold = true },
  LspReferenceText = { bg = colors.grey, bold = true },
  LspReferenceWrite = { bg = colors.grey, bold = true },
  DiagnosticHint = { fg = colors.purple },
  DiagnosticError = { fg = colors.red },
  DiagnosticWarn = { fg = colors.yellow },
  DiagnosticInformation = { fg = colors.green },
  LspSignatureActiveParameter = { fg = colors.black, bg = colors.green },
  RenameTitle = { fg = colors.black, bg = colors.blue },
  RenameBorder = { fg = colors.grey, bg = colors.black },

  -- Navic
  NavicIconsFile = { fg = theme.base07 },
  NavicIconsModule = { fg = theme.base0A },
  NavicIconsNamespace = { fg = theme.base0A },
  NavicIconsPackage = { fg = theme.base0A },
  NavicIconsClass = { fg = colors.orange, bg = "NONE" },
  NavicIconsArray = { fg = colors.orange, bg = "NONE" },
  NavicIconsObject = { fg = colors.orange, bg = "NONE" },
  NavicIconsMethod = { fg = theme.base0D },
  NavicIconsProperty = { fg = theme.base08 },
  NavicIconsField = { fg = theme.base08 },
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

  -- Notify
  NotifyERRORBorder = { fg = colors.red },
  NotifyWARNBorder = { fg = colors.yellow },
  NotifyINFOBorder = { fg = colors.green },
  NotifyDEBUGBorder = { fg = colors.purple },
  NotifyTRACEBorder = { fg = colors.purple },
  NotifyERRORIcon = { fg = colors.red },
  NotifyWARNIcon = { fg = colors.yellow },
  NotifyINFOIcon = { fg = colors.green },
  NotifyDEBUGIcon = { fg = colors.purple },
  NotifyTRACEIcon = { fg = colors.purple },
  NotifyERRORTitle = { fg = colors.red },
  NotifyWARNTitle = { fg = colors.yellow },
  NotifyINFOTitle = { fg = colors.green },
  NotifyDEBUGTitle = { fg = colors.purple },
  NotifyTRACETitle = { fg = colors.purple },
  NotifyERRORBody = { fg = colors.white },
  NotifyWARNBody = { fg = colors.white },
  NotifyINFOBody = { fg = colors.white },
  NotifyDEBUGBody = { fg = colors.white },
  NotifyTRACEBody = { fg = colors.white },

  -- Nvimtree
  NvimTreeEmptyFolderName = { fg = colors.folder_bg },
  NvimTreeFolderIcon = { fg = colors.folder_bg },
  NvimTreeFolderName = { fg = colors.folder_bg },
  NvimTreeRootFolder = { fg = colors.red },
  NvimTreeOpenedFolderName = { fg = colors.folder_bg },
  NvimTreeGitDirty = { fg = colors.red },
  NvimTreeGitStaged = { fg = colors.blue },
  NvimTreeGitNew = { fg = colors.yellow },
  NvimTreeGitDeleted = { fg = colors.red },
  NvimTreeGitMerge = { fg = colors.light_grey },
  NvimTreeGitRenamed = { fg = colors.light_grey },
  NvimTreeNormal = { bg = colors.darker_black },
  NvimTreeNormalNC = { bg = colors.darker_black },
  NvimTreeIndentMarker = { fg = colors.folder_bg },
  NvimTreeEndOfBuffer = { fg = colors.darker_black },
  NvimTreeWindowPicker = { fg = colors.red, bg = colors.black2 },
  NvimTreeCursorLine = { bg = colors.one_bg3 },
  NvimTreeGitIgnored = { fg = colors.purple },
  NvimTreeWinSeparator = { fg = colors.darker_black, bg = colors.black },

  -- bufferline
  lineFill = { bg = colors.black2 },
  LineBufOn = { fg = colors.white, bg = colors.black },
  LineBufOff = { fg = colors.light_grey, bg = colors.black2 },
  LineBufOnModified = { fg = colors.green, bg = colors.black },
  BufLineBufOffModified = { fg = colors.red, bg = colors.black2 },
  LineBufOnClose = { fg = colors.red, bg = colors.black },
  LineBufOffClose = { fg = colors.light_grey, bg = colors.black2 },
  lineTabNewBtn = { fg = colors.white, bg = colors.one_bg3 },
  LineTabOn = { fg = colors.black, bg = colors.nord_blue },
  LineTabOff = { fg = colors.white, bg = colors.one_bg2 },
  LineTabCloseBtn = { fg = colors.black, bg = colors.nord_blue },
  TabTitle = { fg = colors.black, bg = colors.white },
  LineThemeToggleBtn = { fg = colors.white, bg = colors.one_bg3 },
  LineCloseAllBufsBtn = { bg = colors.red, fg = colors.black },

  -- Statusline
  StatusLine = { bg = colors.statusline_bg },
  St_Treesitter = { fg = colors.green, bg = colors.statusline_bg },
  St_gitIcons = { fg = colors.light_grey, bg = colors.statusline_bg },
  St_gitAdd = { fg = colors.green, bg = colors.statusline_bg },
  St_gitMod = { fg = colors.yellow, bg = colors.statusline_bg },
  St_gitRem = { fg = colors.red, bg = colors.statusline_bg },
  St_lspError = { fg = colors.red, bg = colors.statusline_bg },
  St_lspWarning = { fg = colors.yellow, bg = colors.statusline_bg },
  St_LspHints = { fg = colors.purple, bg = colors.statusline_bg },
  St_LspInfo = { fg = colors.green, bg = colors.statusline_bg },
  St_LspStatus = { fg = colors.white, bg = colors.statusline_bg },
  St_LspProgress = { fg = colors.green, bg = colors.statusline_bg },
  St_LspStatus_Icon = { fg = colors.black, bg = colors.nord_blue },
  St_NormalMode = { fg = colors.black, bg = colors.nord_blue },
  St_InsertMode = { fg = colors.black, bg = colors.dark_purple },
  St_TerminalMode = { fg = colors.black, bg = colors.green },
  St_NTerminalMode = { fg = colors.black, bg = colors.yellow },
  St_VisualMode = { fg = colors.black, bg = colors.cyan },
  St_ReplaceMode = { fg = colors.black, bg = colors.orange },
  St_ConfirmMode = { fg = colors.black, bg = colors.teal },
  St_CommandMode = { fg = colors.black, bg = colors.green },
  St_SelectMode = { fg = colors.black, bg = colors.nord_blue },
  St_ModeM = { fg = colors.nord_blue, bg = colors.statusline_bg },
  St_NormalModeE = { bg = colors.black, fg = colors.nord_blue },
  St_InsertModeE = { bg = colors.black, fg = colors.dark_purple },
  St_TerminalModeE = { bg = colors.black, fg = colors.green },
  St_NTerminalModeE = { bg = colors.black, fg = colors.green },
  St_VisualModeE = { bg = colors.black, fg = colors.cyan },
  St_ReplaceModeE = { bg = colors.black, fg = colors.orange },
  St_ConfirmModeE = { bg = colors.black, fg = colors.teal },
  St_CommandModeE = { bg = colors.black, fg = colors.green },
  St_SelectModeE = { bg = colors.black, fg = colors.nord_blue },
  St_EmptySpace = { fg = colors.grey, bg = colors.lightbg },
  St_EmptySpace2 = { fg = colors.grey, bg = colors.statusline_bg },
  St_file_info = { bg = colors.lightbg, fg = colors.white },
  St_file_sep = { bg = colors.statusline_bg, fg = colors.lightbg },
  St_pos_text = { fg = colors.yellow, bg = colors.lightbg },

  -- Nvoid Info
  NVInfoIdentifier = { fg = colors.yellow, bold = true },
  NVInfoHeader = { fg = colors.yellow },
  NVInfoStar = { fg = colors.red },

  -- Syntax
  Boolean = { fg = theme.base09, },
  Character = { fg = theme.base08, },
  Conditional = { fg = theme.base0E, },
  Constant = { fg = theme.base08, },
  Define = { fg = theme.base0E, sp = "none", },
  Delimiter = { fg = theme.base0F, },
  Float = { fg = theme.base09, },
  Variable = { fg = theme.base05, },
  Function = { fg = theme.base0D, },
  Identifier = { fg = theme.base08, sp = "none", },
  Include = { fg = theme.base0D, },
  Keyword = { fg = theme.base0E, },
  Label = { fg = theme.base0A, },
  Number = { fg = theme.base09, },
  Operator = { fg = theme.base05, sp = "none", },
  PreProc = { fg = theme.base0A, },
  Repeat = { fg = theme.base0A, },
  Special = { fg = theme.base0C, },
  SpecialChar = { fg = theme.base0F, },
  Statement = { fg = theme.base08, },
  StorageClass = { fg = theme.base0A, },
  String = { fg = theme.base0B, },
  Structure = { fg = theme.base0E, },
  Tag = { fg = theme.base0A, },
  Todo = { fg = theme.base0A, bg = theme.base01, },
  Type = { fg = theme.base0A, sp = "none", },
  Typedef = { fg = theme.base0A, },

  -- Telescope
  TelescopeBorder = { fg = colors.darker_black, bg = colors.darker_black },
  TelescopePromptBorder = { fg = colors.black2, bg = colors.black2 },
  TelescopePromptNormal = { fg = colors.white, bg = colors.black2 },
  TelescopePromptPrefix = { fg = colors.red, bg = colors.black2 },
  TelescopeNormal = { bg = colors.darker_black },
  TelescopePreviewTitle = { fg = colors.black, bg = colors.green },
  TelescopePromptTitle = { fg = colors.black, bg = colors.red },
  TelescopeResultsTitle = { fg = colors.darker_black, bg = colors.darker_black },
  TelescopeSelection = { bg = colors.black2, fg = colors.white },
  TelescopeResultsDiffAdd = { fg = colors.green },
  TelescopeResultsDiffChange = { fg = colors.yellow },
  TelescopeResultsDiffDelete = { fg = colors.red },

  -- Treesitter
  ["@annotation"] = { fg = theme.base0F, },
  ["@attribute"] = { fg = theme.base0A, },
  ["@character"] = { fg = theme.base08, },
  ["@constructor"] = { fg = theme.base0C, },
  ["@constant"] = { fg = theme.base08, },
  ["@constant.builtin"] = { fg = theme.base09, },
  ["@constant.macro"] = { fg = theme.base08, },
  ["@error"] = { fg = theme.base08, },
  ["@exception"] = { fg = theme.base08, },
  ["@float"] = { fg = theme.base09, },
  ["@keyword"] = { fg = theme.base0E, },
  ["@keyword.function"] = { fg = theme.base0E, },
  ["@keyword.return"] = { fg = theme.base0E, },
  ["@function"] = { fg = theme.base0D, },
  ["@function.builtin"] = { fg = theme.base0D, },
  ["@function.macro"] = { fg = theme.base08, },
  ["@function.call"] = { fg = theme.base0D, },
  ["@operator"] = { fg = theme.base05, },
  ["@keyword.operator"] = { fg = theme.base0E, },
  ["@method"] = { fg = theme.base0D, },
  ["@method.call"] = { fg = theme.base0D, },
  ["@namespace"] = { fg = theme.base08, },
  ["@none"] = { fg = theme.base05, },
  ["@parameter"] = { fg = theme.base08, },
  ["@reference"] = { fg = theme.base05, },
  ["@punctuation.bracket"] = { fg = theme.base0F, },
  ["@punctuation.delimiter"] = { fg = theme.base0F, },
  ["@punctuation.special"] = { fg = theme.base08, },
  ["@string"] = { fg = theme.base0B, },
  ["@string.regex"] = { fg = theme.base0C, },
  ["@string.escape"] = { fg = theme.base0C, },
  ["@string.special"] = { fg = theme.base0C, },
  ["@symbol"] = { fg = theme.base0B, },
  ["@tag"] = { link = "Tag", },
  ["@tag.attribute"] = { link = "@property", },
  ["@tag.delimiter"] = { fg = theme.base0F, },
  ["@text"] = { fg = theme.base05, },
  ["@text.strong"] = { bold = true, },
  ["@text.emphasis"] = { fg = theme.base09, },
  ["@text.strike"] = { fg = theme.base0F, strikethrough = true, },
  ["@text.literal"] = { fg = theme.base09, },
  ["@text.uri"] = { fg = theme.base09, underline = true, },
  ["@type.builtin"] = { fg = theme.base0A, },
  ["@variable"] = { fg = theme.base05, },
  ["@variable.builtin"] = { fg = theme.base09, },
  ["@definition"] = { sp = theme.base04, underline = true, },
  ["@scope"] = { bold = true, },
  ["@field"] = { fg = theme.base08, },
  ["@field.key"] = { fg = theme.base08, },
  ["@property"] = { fg = theme.base08, },
  ["@include"] = { link = "Include", },
  ["@conditional"] = { link = "Conditional", },

  -- WhichKey
  WhichKey = { fg = colors.purple },
  WhichKeySeparator = { fg = colors.green },
  WhichKeyDesc = { fg = colors.blue },
  WhichKeyGroup = { fg = colors.cyan },
  WhichKeyValue = { fg = colors.light_grey },
  WhichKeyFloat = { bg = colors.darker_black },
}
