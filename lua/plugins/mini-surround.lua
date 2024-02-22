require('mini.surround').setup({
     -- Module mappings. Use `''` (empty string) to disable one.
  mappings = {
    add = '<Leader>sa', -- Add surrounding in Normal and Visual modes
    delete = '<Leader>sd', -- Delete surrounding
    find = '<Leader>sf', -- Find surrounding (to the right)
    find_left = '<Leader>sF', -- Find surrounding (to the left)
    highlight = '<Leader>sh', -- Highlight surrounding
    replace = '<Leader>sr', -- Replace surrounding
    update_n_lines = '<Leader>sn', -- Update `n_lines`

    suffix_last = 'l', -- Suffix to search with "prev" method
    suffix_next = 'n', -- Suffix to search with "next" method
  },
})
