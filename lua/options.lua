-- options --
--
-- relative line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- split open
vim.opt.splitbelow = true
vim.opt.splitright = true

-- linewrapping
vim.opt.wrap = false

-- spaces for tabs
vim.opt.expandtab = true 
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4 -- spaces for indents with <>

-- clipboard
vim.opt.clipboard = "unnamedplus"

-- scroll offset
vim.opt.scrolloff = 999

-- visual block to stay block
vim.opt.virtualedit = "block"

-- search and replace window
vim.opt.inccommand = "split"

-- nvim commands ignore case sensitivity
vim.opt.ignorecase = true

-- termgui
vim.opt.termguicolors = true

-- colorscheme
-- vim.cmd.colorscheme("gruvbox")
vim.cmd("colorscheme catppuccin-latte")

-- leaderkey
vim.g.mapleader = " "


-- set keys
vim.api.nvim_set_keymap('i', 'gk', '<Esc>', {})
vim.api.nvim_set_keymap('v', 'gk', '<Esc>', {})
