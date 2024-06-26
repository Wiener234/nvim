-- options --
--
-- relative line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- split open
vim.opt.splitbelow = true
vim.opt.splitright = true

-- linewrapping
vim.opt.wrap = true

-- spaces for tabs
vim.opt.expandtab = true 
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2 -- spaces for indents with <>

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
vim.cmd("colorscheme tokyonight")

-- leaderkey
vim.g.mapleader = " "

-- clipboard
vim.opt.clipboard = "unnamedplus"

-- colorcolumn
vim.opt.colorcolumn = "80"
-- vim.api.nvim_set_hl(0, "ColorColumn", { bg = '#354'})

-- conceallevel
vim.opt.conceallevel = 2


-- set keys
vim.api.nvim_set_keymap('i', 'gk', '<Esc>', {})
vim.api.nvim_set_keymap('v', 'gk', '<Esc>', {})

-- vim.opt.linebreak = true
-- vim.opt.textwidth = 80
-- vim.opt.formatoptions = 'qwtca'
 
vim.api.nvim_create_autocmd({'BufEnter'} , {
	callback = function ()
    if vim.bo.filetype ~= "norg" then
      vim.o.statuscolumn = ''
      vim.o.statusline = ''
      vim.o.cmdheight = 1
    end
	end,
})
vim.o.statusline = "%#test#%10.{' '}%#StatusLine#%<%f\\ %h%m%r%=%-14.(%l,%c%V%)\\ %P"
local light = "kitty +kitten themes Tokyo Night Day "
local dark = "kitty +kitten themes Tokyo Night Storm "
vim.api.nvim_create_user_command("ColorToggle",
function()
  local state = vim.api.nvim_get_option("background")
  if state == "dark" then
    vim.fn.system(light)
    vim.api.nvim_set_option("background", "light")
    vim.cmd("colorscheme tokyonight-day")
  else if state == "light" then
    vim.fn.system(dark)
    vim.api.nvim_set_option("background", "dark")
    vim.cmd("colorscheme tokyonight")
  end
  end
    
print(vim.api.nvim_get_option("background"))
end,{})
