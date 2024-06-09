local M = {}
local g = vim.g
local fn = vim.fn
local base16_path = vim.fn.fnamemodify(debug.getinfo(1, "S").source:sub(2), ":p:h")

M.get_theme_tb = function(type)
	local default_path = "base16.themes." .. g.theme
	local user_path = "themes." .. g.theme

	local present1, default_theme = pcall(require, default_path)
	local present2, user_theme = pcall(require, user_path)

	if present1 then
		return default_theme[type]
	elseif present2 then
		return user_theme[type]
	else
		error("No such theme!")
	end
end

M.merge_tb = function(...)
	return vim.tbl_deep_extend("force", ...)
end

M.turn_str_to_color = function(tb)
	local colors = M.get_theme_tb("base_30")
	local copy = vim.deepcopy(tb)

	for _, hlgroups in pairs(copy) do
		for opt, val in pairs(hlgroups) do
			if
				(opt == "fg" or opt == "bg" or opt == "sp")
				and not (val:sub(1, 1) == "#" or val == "none" or val == "NONE")
			then
				hlgroups[opt] = colors[val]
			end
		end
	end

	return copy
end

M.extend_default_hl = function(highlights, integration_name)
	local polish_hl = M.get_theme_tb("polish_hl")

	-- polish themes
	if polish_hl and polish_hl[integration_name] then
		highlights = M.merge_tb(highlights, polish_hl[integration_name])
	end

	-- transparency
	if nvoid.ui.transparency then
		local glassy = require("base16.glassy")

		for key, value in pairs(glassy) do
			if highlights[key] then
				highlights[key] = M.merge_tb(highlights[key], value)
			end
		end
	end

	if nvoid.ui.hl_override then
		local overriden_hl = M.turn_str_to_color(nvoid.ui.hl_override)

		for key, value in pairs(overriden_hl) do
			if highlights[key] then
				highlights[key] = M.merge_tb(highlights[key], value)
			end
		end
	end

	return highlights
end

M.load_highlight = function(group)
	local highlights = require("base16.integrations." .. group)
	return M.extend_default_hl(highlights, group)
end

-- convert table into string
M.table_to_str = function(tb)
	local result = ""

	for hlgroupName, hlgroup_vals in pairs(tb) do
		local hlname = "'" .. hlgroupName .. "',"
		local opts = ""

		for optName, optVal in pairs(hlgroup_vals) do
			local valueInStr = ((type(optVal)) == "boolean" or type(optVal) == "number") and tostring(optVal)
				or '"' .. optVal .. '"'
			opts = opts .. optName .. "=" .. valueInStr .. ","
		end

		result = result .. "vim.api.nvim_set_hl(0," .. hlname .. "{" .. opts .. "})"
	end

	return result
end

M.saveStr_to_cache = function(filename, tb)
	-- Thanks to https://github.com/nullchilly and https://github.com/EdenEast/nightfox.nvim
	-- It helped me understand string.dump stuff

	local bg_opt = "vim.opt.bg='" .. M.get_theme_tb("type") .. "'"
	local defaults_cond = filename == "defaults" and bg_opt or ""

	local lines = "return string.dump(function()" .. defaults_cond .. M.table_to_str(tb) .. "end, true)"
	local file = io.open(vim.g.base16_cache .. filename, "wb")

	if file then
		file:write(loadstring(lines)())
		file:close()
	end
end

M.compile = function()
	if not vim.loop.fs_stat(vim.g.base16_cache) then
		vim.fn.mkdir(vim.g.base16_cache, "p")
	end

	-- All integration modules, each file returns a table
	local hl_files = base16_path .. "/integrations"

	for _, file in ipairs(vim.fn.readdir(hl_files)) do
		-- skip caching some files
		if file ~= "statusline" or file ~= "treesitter" then
			local filename = vim.fn.fnamemodify(file, ":r")
			M.saveStr_to_cache(filename, M.load_highlight(filename))
		end
	end
end

M.load_all_highlights = function()
	require("plenary.reload").reload_module("base16")
	M.compile()

	for _, file in ipairs(vim.fn.readdir(vim.g.base16_cache)) do
		dofile(vim.g.base16_cache .. file)
	end
end

M.list_themes = function()
	local default_themes = vim.fn.readdir(vim.fn.stdpath("data") .. "/site/pack/lazy/opt/base16/lua/base16/themes")

	local custom_themes = vim.loop.fs_stat(fn.stdpath("config") .. "/lua/themes")

	if custom_themes and custom_themes.type == "directory" then
		local themes_tb = fn.readdir(fn.stdpath("config") .. "/lua/themes")
		for _, value in ipairs(themes_tb) do
			default_themes[#default_themes + 1] = value
		end
	end

	for index, theme in ipairs(default_themes) do
		default_themes[index] = theme:match("(.+)%..+")
	end

	return default_themes
end

M.replace_word = function(old, new)
	local config_file = vim.fn.stdpath("config") .. "/config.lua"
	local file = io.open(config_file, "r")
	local added_pattern = string.gsub(old, "-", "%%-") -- add % before - if exists
	local new_content = file:read("*all"):gsub(added_pattern, new)

	file = io.open(config_file, "w")
	file:write(new_content)
	file:close()
end

return M
