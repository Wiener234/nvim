local builtin = require('telescope.builtin')

vim.keymap.set('n', '<Leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<Leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<Leader>fg', builtin.live_grep, {})

require('telescope').setup({
    defaults = {
        mappings = {
            n = {
                ['<Leader>ff'] = require('telescope.actions').close,
                ['<Leader>fb'] = require('telescope.actions').close,
                ['<Leader>fg'] = require('telescope.actions').close,
            }
        }
    }
})
