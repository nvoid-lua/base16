local M = {}
local g = vim.g
local fn = vim.fn

M.get_theme_tb = function(type)
  local default_path = "base16.themes." .. g.theme

  local present1, default_theme = pcall(require, default_path)

  if present1 then
    return default_theme[type]
  else
    error "No such theme bruh >_< "
  end
end

M.merge_tb = function(table1, table2)
  return vim.tbl_deep_extend("force", table1, table2)
end

--  credits to https://github.com/max397574 for this function
M.clear_highlights = function(hl_group)
  local highlights_raw = vim.split(vim.api.nvim_exec("filter " .. hl_group .. " hi", true), "\n")
  local highlight_groups = {}

  for _, raw_hi in ipairs(highlights_raw) do
    table.insert(highlight_groups, string.match(raw_hi, hl_group .. "%a+"))
  end

  for _, highlight in ipairs(highlight_groups) do
    vim.cmd([[hi clear ]] .. highlight)
  end
end

M.load_all_highlights = function()
  vim.opt.bg = require("base16").get_theme_tb "type" -- dark/light

  -- reload highlights for theme switcher
  local reload = require("plenary.reload").reload_module
  local clear_hl = require("base16").clear_highlights

  clear_hl "BufferLine"
  clear_hl "TS"

  reload "base16.integrations"
  reload "base16.hl"

  local hl_groups = require "base16.hl"

  for hl, col in pairs(hl_groups) do
    vim.api.nvim_set_hl(0, hl, col)
  end
end

M.turn_str_to_color = function(tb)
  local colors = M.get_theme_tb "base_30"

  for _, groups in pairs(tb) do
    for k, v in pairs(groups) do
      if k == "fg" or k == "bg" then
        if v:sub(1, 1) == "#" or v == "none" or v == "NONE" then
        else
          groups[k] = colors[v]
        end
      end
    end
  end

  return tb
end

M.extend_default_hl = function(highlights)
  local glassy = require "base16.glassy"
  local polish_hl = M.get_theme_tb "polish_hl"

  -- polish themes
  if polish_hl then
    for key, value in pairs(polish_hl) do
      if highlights[key] then
        highlights[key] = M.merge_tb(highlights[key], value)
      end
    end
  end

  -- transparency
  if vim.g.transparency then
    for key, value in pairs(glassy) do
      if highlights[key] then
        highlights[key] = M.merge_tb(highlights[key], value)
      end
    end
  end

  local overriden_hl = M.turn_str_to_color(nvoid.ui.hl_override)

  for key, value in pairs(overriden_hl) do
    if highlights[key] then
      highlights[key] = M.merge_tb(highlights[key], value)
    end
  end
end

M.load_highlight = function(group)
  if type(group) == "string" then
    group = require("base16.integrations." .. group)
    M.extend_default_hl(group)
  end

  for hl, col in pairs(group) do
    vim.api.nvim_set_hl(0, hl, col)
  end
end

M.load_theme = function()
  M.load_highlight "defaults"
  M.load_highlight "statusline"
  M.load_highlight(M.turn_str_to_color(nvoid.ui.hl_add))
end

M.toggle_transparency = function()
  local transparency_status = nvoid.ui.transparency
  local write_data = require("nvchad").write_data

  local function save_chadrc_data()
    local old_data = "transparency = " .. tostring(transparency_status)
    local new_data = "transparency = " .. tostring(g.transparency)

    write_data(old_data, new_data)
  end

  if g.transparency then
    g.transparency = false
    M.load_all_highlights()
    save_chadrc_data()
  else
    g.transparency = true
    M.load_all_highlights()
    save_chadrc_data()
  end
end

M.reload_theme = require "base16.reload_theme"

M.list_themes = function()
  local default_themes = vim.fn.readdir(vim.fn.stdpath "data" .. "/site/pack/lazy/opt/base16/lua/base16/themes")
  default_themes = default_themes
  for index, theme in ipairs(default_themes) do
    default_themes[index] = fn.fnamemodify(fn.fnamemodify(theme, ":t"), ":r")
  end

  return default_themes
end

M.clear_cmdline = function()
  vim.defer_fn(function()
    vim.cmd "echo"
  end, 0)
end

M.replace_word = function(old, new)
  local chadrc = vim.fn.stdpath "config" .. "/config.lua"
  local file = io.open(chadrc, "r")
  local added_pattern = string.gsub(old, "-", "%%-") -- add % before - if exists
  local new_content = file:read("*all"):gsub(added_pattern, new)

  file = io.open(chadrc, "w")
  file:write(new_content)
  file:close()
end

return M
