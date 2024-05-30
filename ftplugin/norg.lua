vim.opt.linebreak = true
vim.opt.textwidth = 80
vim.opt.formatoptions = 'qwcat' -- 

-- vim.api.nvim_set_hl(0, "PmenuSel", { bg = '#414868'})
vim.o.statusline = "%#PmenuSel#%9.{' '}%#StatusLine#%<%f\\ %h%m%r%=%-14.(%l,%c%V%)\\ %P"
vim.o.cmdheight = 0
vim.o.statuscolumn = "%#PmenuSel#%9.{'   '}%#t# %=%s%.{v:virtnum < 1 ? (v:relnum ? v:relnum : v:lnum < 10 ? v:lnum . ' ' : v:lnum) : ''}%C    "
vim.api.nvim_create_user_command("Decoration", 
function()
  if vim.o.statuscolumn ~= "" then
    vim.o.statuscolumn = ""
    vim.o.statusline = ''
    vim.o.cmdheight = 1
  else
    vim.o.statuscolumn = "%#PmenuSel#%9.{'   '}%#t# %=%s%.{v:virtnum < 1 ? (v:relnum ? v:relnum : v:lnum < 10 ? v:lnum . ' ' : v:lnum) : ''}%C    "
    vim.o.statusline = "%#PmenuSel#%9.{' '}%#StatusLine#%<%f\\ %h%m%r%=%-14.(%l,%c%V%)\\ %P"
    vim.o.cmdheight = 0
  end
end,{})
