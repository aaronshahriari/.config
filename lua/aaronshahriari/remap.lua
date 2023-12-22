vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.g.netrw_bufsettings = 'noma nomod nu nowrap ro nobl'
vim.cmd('autocmd FileType netrw set nu')

-- Map <leader>-h and <leader>-l to cycle through tabs
vim.api.nvim_set_keymap('n', '<leader>h', ':tabprevious<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>l', ':tabnext<CR>', { noremap = true, silent = true })
