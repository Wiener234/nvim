-- init
require("rocks")
require("options")

vim.keymap.set('n', '<leader><leader>c', '<cmd>cd ~/.config/nvim/ | Telescope find_files<CR>', {})
vim.keymap.set('i', 'gk', '<Esc>', {})				-- exit insert mode
vim.keymap.set('v', 'gk', '<Esc>', {})				-- exit visual mode
vim.keymap.set('t', 'gk', [[<C-\><C-n>]], {})		-- exit terminal mode
vim.keymap.set('n', ';', '<C-w>', {})				-- move between windows
vim.keymap.set('n', '<Leader>t', ':FloatermToggle<CR>', {})
