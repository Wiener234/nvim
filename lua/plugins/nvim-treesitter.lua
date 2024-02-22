-- nvim-treesitter
--
require('nvim-treesitter.configs').setup({
    ensure_installed = { 'c', 'lua', 'vim', 'vimdoc', 'query', 'norg' },

    auto_install = true,

    highlight = {
        enable = true,
    },

    incremental_selection = {
        enable = true,
        keymaps = {
            init_selection = "<Leader>ss", -- set to `false` to disable one of the mappings
            node_incremental = "<Leader>si",
            scope_incremental = "<Leader>sc",
            node_decremental = "<Leader>sd",
        },
    },
})
