local function reload_theme(theme_name)
  if theme_name == nil or theme_name == "" then
    theme_name = vim.g.theme
  end

  local default_themes = pcall(require, "base16.themes." .. theme_name)

  if not default_themes then
    print("No such theme ( " .. theme_name .. " )")
    return false
  end

  vim.g.theme = theme_name
  require("base16").load_all_highlights()

  return true
end

return reload_theme
