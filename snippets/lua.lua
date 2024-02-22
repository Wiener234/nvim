local ls = require("luasnip") --{{{
local s = ls.s
local i = ls.i
local t = ls.t

local d = ls.dynamic_node
local c = ls.choice_node
local f = ls.function_node
local sn = ls.snippet_node

local fmt = require("luasnip.extras.fmt").fmt
local rep = require("luasnip.extras").rep

local snippets, autosnippets = {}, {} --}}}

local group = vim.api.nvim_create_augroup("Lua Snippets", { clear = true })
local file_pattern = "*.lua"

local function cs(trigger, nodes, opts) --{{{
	local snippet = s(trigger, nodes)
	local target_table = snippets

	local pattern = file_pattern
	local keymaps = {}

	if opts ~= nil then
		-- check for custom pattern
		if opts.pattern then
			pattern = opts.pattern
		end

		-- if opts is a string
		if type(opts) == "string" then
			if opts == "auto" then
				target_table = autosnippets
			else
				table.insert(keymaps, { "i", opts })
			end
		end

		-- if opts is a table
		if opts ~= nil and type(opts) == "table" then
			for _, keymap in ipairs(opts) do
				if type(keymap) == "string" then
					table.insert(keymaps, { "i", keymap })
				else
					table.insert(keymaps, keymap)
				end
			end
		end

		-- set autocmd for each keymap
		if opts ~= "auto" then
			for _, keymap in ipairs(keymaps) do
				vim.api.nvim_create_autocmd("BufEnter", {
					pattern = pattern,
					group = group,
					callback = function()
						vim.keymap.set(keymap[1], keymap[2], function()
							ls.snip_expand(snippet)
						end, { noremap = true, silent = true, buffer = true })
					end,
				})
			end
		end
	end

	table.insert(target_table, snippet) -- insert snippet into appropriate table
end --}}}

-- Start Refactoring --

local myFirstSnippet = s('myFirstSnippet', {
	t('Hi! This is my fist snippet'),
	i(1,' placeholder_text' ),
	t({'', 'this is another text mode'})
})
table.insert(snippets, myFirstSnippet)

local mySecondSnippet = s('function',
	fmt(
	[[
local {} = function({})
	{}
end
	]],
	{
		i(1, 'myVar'),
		c(2, {t(''),t('myArgs')}),
		i(3, '-- TODO: something'),
	}
	)
)
table.insert(snippets, mySecondSnippet)

local function fn(
	args,
	parent,
	user_args
)
	return '[' .. args[1][1] .. user_args .. ']'
end

local snippet = s('snippet',
	fmt(
	[[
local {} = s('{}',
	{}
)
table.insert({}, {})
	]],
	{
		i(1, 'varName'),
		i(2, 'snipName'),
		i(3, '--TODO: write snippet'),
		c(4, {t('snippets'), t('autosnippets')}),
		d(5, function(args)return sn(nil, {i(1,args[1])})end, {1}),
	}
	)
)
table.insert(snippets, snippet)


-- End Refactoring --

return snippets, autosnippets
