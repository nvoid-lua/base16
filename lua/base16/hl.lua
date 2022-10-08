local merge_tb = require("base16").merge_tb

local highlights = {}
function _G.get_base16_dir()
  local nvoid_baee16_dir = os.getenv "NVOID_BASE16_DIR"
  if not nvoid_baee16_dir then
    return vim.call("stdpath", "data")
  end
  return nvoid_baee16_dir
end
local hl_dir = get_base16_dir()


-- push hl_dir file names to table
local hl_files = require("plenary.scandir").scan_dir(hl_dir, {})

for _, file in ipairs(hl_files) do
  local a = vim.fn.fnamemodify(file, ":t")
  a = vim.fn.fnamemodify(a, ":r")

  local integration = require("base16.highlight." .. a)
  highlights = merge_tb(highlights, integration)
end

-- polish theme specific highlights
local polish_hl = require("base16").get_theme_tb "polish_hl"

if polish_hl then
  highlights = merge_tb(highlights, polish_hl)
end

if vim.g.transparency then
  highlights = merge_tb(highlights, require "base16.glassy")
end

return highlights
