require('telescope').setup{
    defaults = {
        layout_strategy = 'horizontal',
        layout_config = { height = 0.75, width = 0.75 },
    },
}

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
